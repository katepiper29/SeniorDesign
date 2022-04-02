//
//  Avatar.swift
//  QuickCamera
//
//  Created by Rachel Cutlan on 4/2/22.
//

import SwiftUI
import AVFoundation
import AVKit

// checking push with a comment

struct Avatar: View {
    
    private var videoURL: URL?

  @State var isRecording = false
    @State private var Finalpageshowing = false

    init() {
        videoURL = Bundle.main.url(forResource: "Avatar", withExtension: "mov")
    }
    
    
  var cameraView = CameraView()

  var body: some View {
      Text("Hello")
      
      if let url = videoURL {
          if #available(iOS 14.0, *) {
              VideoPlayer(player: AVPlayer(url: url))
          }
          else {
              VideoPlayerController(videoURL: url)
          }
          }
          else {
              Text("Video URL not available")
          }
      }
   // .sheet(isPresented: $Finalpageshowing, onDismiss: {}, content: {Finalpage()})
}
struct Avatar_Previews: PreviewProvider {
    static var previews: some View {
        Avatar()
    }
}
