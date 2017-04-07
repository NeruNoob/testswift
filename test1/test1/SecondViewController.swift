//
//  SecondViewController.swift
//  test1
//
//  Created by Elie Page on 04/04/2017.
//  Copyright © 2017 Elie Page. All rights reserved.
//

import UIKit

// <TODO:keyboard controller (hide and stuff)>

func myOtherCalculator(_ a: Int, _ b: Int, _ c: Int) -> Int {
  return a * b - c
}

class SecondViewController: UIViewController, UITextFieldDelegate {

  @IBOutlet weak var nameTextSelector: UITextField!
  @IBOutlet weak var descTextSelector: UITextField!
  @IBOutlet weak var addTaskButton: UIButton!

  override func viewDidLoad() {
    super.viewDidLoad()
    nameTextSelector.delegate = self
    descTextSelector.delegate = self
  }

  @IBAction func onButtonPressed(_ sender: Any) {
    guard nameTextSelector.text != "" else {
      print("champ(s) vide(s)")
      return
    }
    taskMGR.addTask(name: nameTextSelector.text!, desc: descTextSelector.text!)
    self.dismiss(animated: true, completion: nil)
  }

  func myCalculator(_ a: Int, _ b: Int) -> Int {
    return a * b - 4
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }

}
