//
//  MyRestarauntsTableViewCell.swift
//  MyRestaurants
//
//  Created by Павел Анплеенко on 22/05/16.
//  Copyright © 2016 Pavel Anpleenko. All rights reserved.
//

import UIKit

class MyRestarauntsTableViewCell: UITableViewCell {

  @IBOutlet weak var thumbnailImageView: UIView!
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var LocationLabel: UILabel!
  @IBOutlet weak var typeLabel: UILabel!
  
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
