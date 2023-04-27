//
//  ViewController.swift
//  video_player
//
//  Created by Evans Wanyoike on 20/04/2023.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        playVideo()
    }
    private func playVideo(){
                guard let path = Bundle.main.path(forResource: "test", ofType: "mp4") else {
                    debugPrint("video nopt found!!")
                    return
                }
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        playerController.player = player
        present(playerController, animated: true){
            player.play();
        }
        
    }
    
}
