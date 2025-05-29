//
//  ViewController.swift
//  YoutubePlayerPractical
//
//  Created by Apple on 22/05/23.
//

import UIKit
import youtube_ios_player_helper

let videoURL = "https://www.youtube.com/watch?v=4FyGwyeB6cc"

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    var playerView: YTPlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.demo1()
        //self.demo2()
//        self.demo3()
    }
    
    func extractVideoID(from videoURL: String) -> String? {
        guard let url = URL(string: videoURL) else { return nil }
        let queryItems = URLComponents(url: url, resolvingAgainstBaseURL: false)?.queryItems
        return queryItems?.first(where: { $0.name == "v" })?.value
    }
    
    private func demo1() {
        self.playerView = YTPlayerView()
        self.playerView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(self.playerView)
        
        NSLayoutConstraint.activate([
            self.playerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            self.playerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            self.playerView.widthAnchor.constraint(equalToConstant: 300),
            self.playerView.heightAnchor.constraint(equalToConstant: 150)
        ])
        
        if let videoID = self.extractVideoID(from: videoURL) {
            self.playerView.load(withVideoId: videoID)
        } else {
            print("Invalid YouTube URL")
        }
    }
    
    private func demo2() {
        self.playerView = YTPlayerView()
        self.playerView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(self.playerView)

        NSLayoutConstraint.activate([
            self.playerView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.playerView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            self.playerView.widthAnchor.constraint(equalToConstant: 300),
            self.playerView.heightAnchor.constraint(equalToConstant: 200)
        ])
        self.playerView.load(withVideoId:  "4FyGwyeB6cc")
    }
    
    private func demo3() {
        self.playerView = YTPlayerView()
        self.playerView.translatesAutoresizingMaskIntoConstraints = false
        self.imageView.addSubview(self.playerView)

        NSLayoutConstraint.activate([
            self.playerView.topAnchor.constraint(equalTo: self.imageView.topAnchor),
            self.playerView.leadingAnchor.constraint(equalTo: self.imageView.leadingAnchor),
            self.playerView.trailingAnchor.constraint(equalTo: self.imageView.trailingAnchor),
            self.playerView.heightAnchor.constraint(equalToConstant: 160)
        ])

        let videoURL = "https://www.youtube.com/watch?v=4FyGwyeB6cc"
        DispatchQueue.main.async {
            if let videoID = self.extractVideoID(from: videoURL) {
                self.playerView.load(withVideoId: videoID)
            } else {
                print("Invalid YouTube URL")
            }
        }
    }
    
    @IBAction func btnPlay(_ sender: UIButton) {
        self.demo1()
    }
}
