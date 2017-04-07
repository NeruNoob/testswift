//
//  ExtensionUITextField.swift
//  test1
//
//  Created by Elie Page on 05/04/2017.
//  Copyright © 2017 Elie Page. All rights reserved.
//

import UIKit

extension UITextField {
  
  func setCustomTestBox(color: UIColor = UIColor.gray) {
    self.layer.cornerRadius = 5
    self.layer.borderColor = color.cgColor
    self.layer.borderWidth = 1
    self.layer.masksToBounds = true

    //custom position Frame (redefined)
    self.frame = CGRect(x: 0.1 * UIScreen.main.bounds.width, y: self.frame.origin.y, width: 0.8 * UIScreen.main.bounds.width, height: self.frame.size.height)
  }

}
