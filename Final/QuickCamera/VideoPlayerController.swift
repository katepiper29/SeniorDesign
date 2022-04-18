//
//  VideoPlayerController.swift
//  QuickCamera
//
//  Created by Rachel Cutlan on 4/2/22.
//

import Foundation
import SwiftUI
import AVKit

struct VideoPlayerController: UIViewControllerRepresentable {
    typealias UIViewControllerType = AVPlayerViewController
    
    var videoURL: URL
    
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let player = AVPlayer(url: videoURL)
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        return playerViewController
    }
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
    
    }
    
}


