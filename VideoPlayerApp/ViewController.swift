//
//  ViewController.swift
//  VideoPlayerApp
//
//  Created by apple on 31/03/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    @IBAction func tapOnWatchVideo(_ sender: UIButton) {
        
        if let path = Bundle.main.path(forResource: "video", ofType: "mp4"){
            
            let video = AVPlayer(url: URL(fileURLWithPath: path))
            let videoPlayer =  AVPlayerViewController()
            videoPlayer.player = video
            
            present(videoPlayer, animated: true) {
                video.play()
            }
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

