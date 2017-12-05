//
//  VideoListTableViewCell.swift
//  Homework3_Constrain_YouTube
//
//  Created by Channat Tem on 12/5/17.
//  Copyright © 2017 Korea Software HRD Center. All rights reserved.
//

import UIKit

class VideoListTableViewCell: UITableViewCell {

    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var channelImageView: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!
    @IBOutlet weak var channelNameLabel: UILabel!
    @IBOutlet weak var numberofViewLabel: UILabel!
    @IBOutlet weak var uploadedLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
