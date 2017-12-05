//
//  TitleTableViewCell.swift
//  Homework3_Constrain_YouTube
//
//  Created by Channat Tem on 12/6/17.
//  Copyright © 2017 Korea Software HRD Center. All rights reserved.
//

import UIKit

class TitleTableViewCell: UITableViewCell {

    @IBOutlet weak var videoTitleLabel: UILabel!
    @IBOutlet weak var numberOfViewLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
