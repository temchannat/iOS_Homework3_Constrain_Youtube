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
    
    let barButton: UIBarButtonItem = {
        let button: UIButton = UIButton()
        button.setImage(#imageLiteral(resourceName: "youtube-logo-small"), for: .normal)
        let barButton = UIBarButtonItem(customView: button)
        return barButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeYouTubeList()
        self.navigationItem.leftBarButtonItem = barButton
        
    }
    
    
    
    
    func initializeYouTubeList() {
        youTubeList = [
            YouTube( videoImageView: #imageLiteral(resourceName: "a"),
                     videoTitle: "Celine Tam: 9-Year-Old Stuns Crowd - AGT 2017",
                     channelImage: #imageLiteral(resourceName: "channel_agt"),
                     channelName: "American Got Talent",
                     numberOfView: "5M Views",
                     numberOfSubscriber: "100K",
                     numberOfLike: "3M",
                     numberOfUnlike: "10",
                     uploaded: "2 months ago"),
            YouTube( videoImageView: #imageLiteral(resourceName: "b"),
                     videoTitle: "Mandy Harvey: Deaf Singer Earns Simon Golden Buzzer - AGT 2017",
                     channelImage: #imageLiteral(resourceName: "channel_agt"),
                     channelName: "American Got Talent",
                     numberOfView: "2M Views",
                     numberOfSubscriber: "100K",
                     numberOfLike: "1M",
                     numberOfUnlike: "100",
                     uploaded: "1 months ago"),
            YouTube( videoImageView: #imageLiteral(resourceName: "c"),
                     videoTitle: "Adrian Romoff: 9-Year-Old Piano Player Wows Judges - AGT 2015",
                     channelImage: #imageLiteral(resourceName: "channel_agt"),
                     channelName: "American Got Talent",
                     numberOfView: "10M Views",
                     numberOfSubscriber: "300K",
                     numberOfLike: "7M",
                     numberOfUnlike: "500",
                     uploaded: "2 year ago"),
            YouTube( videoImageView: #imageLiteral(resourceName: "d"),
                     videoTitle: "Sal Valentinetti Makes Heidi Klum blush, America got talent",
                     channelImage: #imageLiteral(resourceName: "channel_agt"),
                     channelName: "American Got Talent",
                     numberOfView: "30M Views",
                     numberOfSubscriber: "100K",
                     numberOfLike: "7M",
                     numberOfUnlike: "500",
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
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showVideoDetails", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoDetailViewController {
            destination.youtube = youTubeList[(tableView.indexPathForSelectedRow?.row)!]
        }
    }
    
    
    
    
    

    

}

