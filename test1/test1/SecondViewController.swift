//
//  SecondViewController.swift
//  test1
//
//  Created by Elie Page on 04/04/2017.
//  Copyright © 2017 Elie Page. All rights reserved.
//

//TODO : keyboard controller (hide and stuff)

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
  
  @IBOutlet weak var nameTextSelector: UITextField!
  @IBOutlet weak var descTextSelector: UITextField!
  @IBOutlet weak var addTaskButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    nameTextSelector.delegate = self
    descTextSelector.delegate = self
 //   view.backgroundColor = UIColor(red: 84/255, green: 172/255, blue: 210/255, alpha: 1)
  }
  
  @IBAction func onButtonPressed(_ sender: Any) {
    guard nameTextSelector.text != "" else {
      print("champ(s) vide(s)")
      return
    }
    taskMGR.addTask(name: nameTextSelector.text!, desc: descTextSelector.text!)
    self.dismiss(animated: true, completion: nil)
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
}
