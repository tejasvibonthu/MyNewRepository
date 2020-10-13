//
//  CustomTableViewCell.swift
//  HarishTaskDropdowns
//
//  Created by IOSuser3 on 06/10/20.
//  Copyright © 2020 CGG. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var lb: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
