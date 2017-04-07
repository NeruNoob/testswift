//
//  MyCellController.swift
//  test1
//
//  Created by Elie Page on 05/04/2017.
//  Copyright © 2017 Elie Page. All rights reserved.
//

import UIKit

class MyCellController: UIViewController {
  
  var ind = 0
  
  @IBOutlet weak var titleField: UITextField!
  @IBOutlet weak var descField: UITextField!
  @IBOutlet weak var buttonEdit: UIButton!
  @IBOutlet weak var buttonDelete: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    print("index : ", ind)
    titleField.setCustomTestBox()
    descField.setCustomTestBox()
    titleField.text = taskMGR.tasks[ind].name
    descField.text = taskMGR.tasks[ind].desc
    titleField.isUserInteractionEnabled = false
    descField.isUserInteractionEnabled = false
    buttonEdit.addNormalTitleAndFit("Edit")
    buttonDelete.addNormalTitleAndFit("Delete")
  }
  
  @IBAction func onDeleteButtonPress(_ sender: Any) {
    if buttonDelete.title(for: .normal) == "Delete" {
      taskMGR.removeTaskAtIndice(ind: ind)
      self.dismiss(animated: true, completion: nil)
    } else {
      titleField.isUserInteractionEnabled = false
      descField.isUserInteractionEnabled = false
      buttonEdit.addNormalTitleAndFit("Edit")
      buttonDelete.addNormalTitleAndFit("Delete")
      titleField.text = taskMGR.tasks[ind].name
      descField.text = taskMGR.tasks[ind].desc
    }
  }
  
  @IBAction func OnEditButtonPress(_ sender: Any) {
    if buttonEdit.title(for: .normal) == "Edit" {
      titleField.isUserInteractionEnabled = true
      descField.isUserInteractionEnabled = true
      buttonEdit.addNormalTitleAndFit("Confirm")
      buttonDelete.addNormalTitleAndFit("Undo")
    } else {
      taskMGR.editTaskAtIndice(name: titleField.text!, desc: descField.text!, ind: ind)
      self.dismiss(animated: true, completion: nil)
    }
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   // Get the new view controller using segue.destinationViewController.
   // Pass the selected object to the new view controller.
   }
   */
  
}
