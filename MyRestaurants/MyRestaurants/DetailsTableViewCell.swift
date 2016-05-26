//
//  DetailsTableViewCell.swift
//  MyRestaurants
//
//  Created by Павел Анплеенко on 27/05/16.
//  Copyright © 2016 Pavel Anpleenko. All rights reserved.
//

import UIKit

class DetailsTableViewCell: UITableViewCell {

  @IBOutlet weak var keyLebal: UILabel!
  @IBOutlet weak var valueLebal: UILabel!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
