//
//  CustomTableViewCell.swift
//  test1
//
//  Created by Elie Page on 05/04/2017.
//  Copyright © 2017 Elie Page. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var descLabel: UILabel!
  @IBOutlet weak var dateLabel: UILabel!

  override func awakeFromNib() {
    super.awakeFromNib()
    self.layer.cornerRadius = frame.size.height / 2
    self.layer.borderWidth = 1
    self.layer.masksToBounds = true
    // Initialization code
  }

  func updateCell(ind: Int) {
    titleLabel.text = taskMGR.tasks[ind].name
    descLabel.text = taskMGR.tasks[ind].desc
    // date also to add with condition if day or not
  }

  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
    // Configure the view for the selected state
  }

}
