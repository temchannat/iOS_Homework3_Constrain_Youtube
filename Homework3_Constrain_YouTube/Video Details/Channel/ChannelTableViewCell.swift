//
//  ChannelTableViewCell.swift
//  Homework3_Constrain_YouTube
//
//  Created by Channat Tem on 12/6/17.
//  Copyright © 2017 Korea Software HRD Center. All rights reserved.
//

import UIKit

class ChannelTableViewCell: UITableViewCell {

    @IBOutlet weak var channelImageView: UIImageView!
    @IBOutlet weak var channelNameLabel: UILabel!
    @IBOutlet weak var numberOfSubscriberLabel: UILabel!
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        channelImageView.clipsToBounds = true
        let imageHieght = channelImageView.frame.height
        channelImageView.layer.cornerRadius = imageHieght / 2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
