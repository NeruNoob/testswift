//
//  TableViewCell.swift
//  test1
//
//  Created by Elie Page on 07/04/2017.
//  Copyright © 2017 Elie Page. All rights reserved.
//

import UIKit

// never used class
class TableViewCell: UITableViewCell {

  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
  }

  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
    // Configure the view for the selected state
  }

  func randomThing() -> Int {
    return 2
  }

}
