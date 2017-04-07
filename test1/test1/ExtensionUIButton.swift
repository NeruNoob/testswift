//
//  ExtensionUIButton.swift
//  test1
//
//  Created by Elie Page on 05/04/2017.
//  Copyright © 2017 Elie Page. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
  
  func addNormalTitleAndFit(_ title: String) {
    setTitle(title, for: .normal)
    sizeToFit()
  }
}
