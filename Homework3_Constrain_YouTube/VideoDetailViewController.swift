//
//  VideoDetailViewController.swift
//  Homework3_Constrain_YouTube
//
//  Created by Channat Tem on 12/6/17.
//  Copyright © 2017 Korea Software HRD Center. All rights reserved.
//

import UIKit

class VideoDetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
  
    
  

    @IBOutlet weak var videoImagView: UIImageView!
    @IBOutlet weak var videoTableView: UITableView!
    
    
    var youtube: YouTube?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        videoTableView.delegate = self
        videoTableView.dataSource = self

        videoImagView.image = youtube!.videoImageView
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = Bundle.main.loadNibNamed("TitleTableViewCell", owner: self, options: nil)?.first as! TitleTableViewCell
            cell.videoTitleLabel.text = youtube?.videoTitle
            cell.numberOfViewLabel.text = youtube?.numberOfView
            return cell
        } else if indexPath.row == 1 {
            let cell = Bundle.main.loadNibNamed("SocialTableViewCell", owner: self, options: nil)?.first as! SocialTableViewCell
            cell.numberOfLikeLabel.text = youtube?.numberOfLike
            cell.numberOfUnlikeLabel.text = youtube?.numberOfUnlike
            return cell
        } else {
            let cell = Bundle.main.loadNibNamed("ChannelTableViewCell", owner: self, options: nil)?.first as! ChannelTableViewCell
            cell.channelImageView.image = youtube?.channelImage
            cell.channelNameLabel.text = youtube?.channelName
            cell.numberOfSubscriberLabel.text = youtube?.numberOfSubscriber
            return cell
        }
    }
    
    
    
    
    


}
