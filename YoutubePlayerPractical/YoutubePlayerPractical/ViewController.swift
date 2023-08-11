//
//  ViewController.swift
//  YoutubePlayerPractical
//
//  Created by Apple on 22/05/23.
//

import UIKit
import youtube_ios_player_helper

class ViewController: UIViewController {

    var playerView: YTPlayerView!

    override func viewDidLoad() {
        super.viewDidLoad()

       

//        let videoURL = "https://www.youtube.com/watch?v=F9G1IYXcSHY&t=2s"
//        DispatchQueue.main.async {
//            if let videoID = self.extractVideoID(from: videoURL) {
//                self.playYouTubeVideo(videoID: videoID)
//            } else {
//                print("Invalid YouTube URL")
//            }
//        }
    }

    func extractVideoID(from videoURL: String) -> String? {
        guard let url = URL(string: videoURL) else {
            return nil
        }

        let queryItems = URLComponents(url: url, resolvingAgainstBaseURL: false)?.queryItems
        return queryItems?.first(where: { $0.name == "v" })?.value
    }

    func playYouTubeVideo(videoID: String) {
        playerView.load(withVideoId: videoID)
    }
    
    @IBAction func btnPlay(_ sender: UIButton) {
        
        playerView = YTPlayerView()
        playerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(playerView)

        NSLayoutConstraint.activate([
            playerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            playerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            playerView.widthAnchor.constraint(equalToConstant: 300),
            playerView.heightAnchor.constraint(equalToConstant: 150)
        ])
        
        let videoURL = "https://www.youtube.com/watch?v=F9G1IYXcSHY&t=2s"
        DispatchQueue.main.async {
            if let videoID = self.extractVideoID(from: videoURL) {
                self.playYouTubeVideo(videoID: videoID)
            } else {
                print("Invalid YouTube URL")
            }
        }
    }
}



//import UIKit
//import youtube_ios_player_helper
//
//class ViewController: UIViewController {
//
//    var playerView: YTPlayerView!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        playerView = YTPlayerView()
//        playerView.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(playerView)
//
//        NSLayoutConstraint.activate([
//            playerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            playerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
//            playerView.widthAnchor.constraint(equalToConstant: 300),
//            playerView.heightAnchor.constraint(equalToConstant: 200)
//        ])
//
//        playYouTubeVideo(videoID: "F9G1IYXcSHY")
//    }
//
//    func playYouTubeVideo(videoID: String) {
//        playerView.load(withVideoId: videoID)
//    }
//}

//import UIKit
//import youtube_ios_player_helper
//
//class ViewController: UIViewController {
//
//    var playerView: YTPlayerView!
//    @IBOutlet weak var imageView: UIImageView!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        playerView = YTPlayerView()
//        playerView.translatesAutoresizingMaskIntoConstraints = false
//        imageView.addSubview(playerView)
//
//        NSLayoutConstraint.activate([
//            playerView.topAnchor.constraint(equalTo: imageView.topAnchor),
//            playerView.leadingAnchor.constraint(equalTo: imageView.leadingAnchor),
//            playerView.trailingAnchor.constraint(equalTo: imageView.trailingAnchor),
//            playerView.heightAnchor.constraint(equalToConstant: 160)
//        ])
//
//        let videoURL = "https://www.youtube.com/watch?v=F9G1IYXcSHY&t=2s"
//        DispatchQueue.main.async {
//            if let videoID = self.extractVideoID(from: videoURL) {
//                self.playYouTubeVideo(videoID: videoID)
//            } else {
//                print("Invalid YouTube URL")
//            }
//        }
//    }
//
//    func extractVideoID(from videoURL: String) -> String? {
//        guard let url = URL(string: videoURL) else {
//            return nil
//        }
//
//        let queryItems = URLComponents(url: url, resolvingAgainstBaseURL: false)?.queryItems
//        return queryItems?.first(where: { $0.name == "v" })?.value
//    }
//
//    func playYouTubeVideo(videoID: String) {
//        playerView.load(withVideoId: videoID)
//    }
//
//
//    @IBAction func btnPlay(_ sender: UIButton) {
//        let videoURL = "https://www.youtube.com/watch?v=F9G1IYXcSHY&t=2s"
//        DispatchQueue.main.async {
//            if let videoID = self.extractVideoID(from: videoURL) {
//                self.playYouTubeVideo(videoID: videoID)
//            } else {
//                print("Invalid YouTube URL")
//            }
//        }
//    }
//}


