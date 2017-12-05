//
//  ViewController.swift
//  Homework3_Constrain_YouTube
//
//  Created by Channat Tem on 12/5/17.
//  Copyright © 2017 Korea Software HRD Center. All rights reserved.
//

import UIKit

class VideoListViewController: UITableViewController {

    var youTubeList = [YouTube]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeYouTubeList()
    }
    
    func initializeYouTubeList() {
        youTubeList = [
            YouTube( videoImageView: #imageLiteral(resourceName: "a"),
                     videoTitle: "Celine Tam: 9-Year-Old Stuns Crowd - AGT 2017",
                     channelImage: #imageLiteral(resourceName: "channel_agt"),
                     channelName: "American Got Talent",
                     numberOfView: "5M Views",
                     numberOfSubscript: "100K",
                     numberOfLike: "3M",
                     numberOfDislike: "10",
                     uploaded: "2 months ago"),
            YouTube( videoImageView: #imageLiteral(resourceName: "b"),
                     videoTitle: "Mandy Harvey: Deaf Singer Earns Simon Golden Buzzer - AGT 2017",
                     channelImage: #imageLiteral(resourceName: "channel_agt"),
                     channelName: "American Got Talent",
                     numberOfView: "2M Views",
                     numberOfSubscript: "100K",
                     numberOfLike: "1M",
                     numberOfDislike: "100",
                     uploaded: "1 months ago"),
            YouTube( videoImageView: #imageLiteral(resourceName: "c"),
                     videoTitle: "Adrian Romoff: 9-Year-Old Piano Player Wows Judges - AGT 2015",
                     channelImage: #imageLiteral(resourceName: "channel_agt"),
                     channelName: "American Got Talent",
                     numberOfView: "10M Views",
                     numberOfSubscript: "300K",
                     numberOfLike: "7M",
                     numberOfDislike: "500",
                     uploaded: "2 year ago"),
            YouTube( videoImageView: #imageLiteral(resourceName: "d"),
                     videoTitle: "Sal Valentinetti Makes Heidi Klum blush, America got talent",
                     channelImage: #imageLiteral(resourceName: "channel_agt"),
                     channelName: "American Got Talent",
                     numberOfView: "30M Views",
                     numberOfSubscript: "100K",
                     numberOfLike: "7M",
                     numberOfDislike: "500",
                     uploaded: "5 year ago"),
        ]
    }

    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return youTubeList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("VideoListTableViewCell", owner: self, options: nil)?.first as? VideoListTableViewCell
        cell?.videoImageView.image = youTubeList[indexPath.row].videoImageView
        cell?.channelImageView.image = youTubeList[indexPath.row].channelImage
        cell?.videoTitleLabel.text = youTubeList[indexPath.row].videoTitle
        cell?.channelNameLabel.text = youTubeList[indexPath.row].channelName
        cell?.numberofViewLabel.text = youTubeList[indexPath.row].numberOfView
        cell?.uploadedLabel.text = youTubeList[indexPath.row].uploaded
        return cell!
    }
    
    
    

    

}

