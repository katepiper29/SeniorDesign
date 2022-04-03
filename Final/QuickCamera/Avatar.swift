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
    @State private var finalpageshowing = false

    init() {
        videoURL = Bundle.main.url(forResource: "Avatar", withExtension: "mov")
    }
    
    
  var cameraView = CameraView()

  var body: some View {
      
      ZStack{
     cameraView
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
          
          VStack {
    Spacer()
    HStack {
      Spacer()
        Button {
          if !isRecording {
            cameraView.startRecording()
          } else {
            cameraView.stopRecording()
          }
          isRecording.toggle()
        } label: {
          Image(systemName: "record.circle")
            .font(.system(size: 60))
            .foregroundColor(isRecording ? Color.red : Color.white)
        }
        Button("Finish"){
            finalpageshowing = true
        }
      }
    .fullScreenCover(isPresented: $finalpageshowing, onDismiss: {}, content: {Finalpage()})
    }
  }
}
}

struct Avatar_Previews: PreviewProvider {
    static var previews: some View {
        Avatar()
        Avatar().previewLayout(.fixed(width:568,height:320))
    }
}
