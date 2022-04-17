//
//  Avatar.swift
//  QuickCamera
//
//  Created by Rachel Cutlan on 4/2/22.
//

import SwiftUI
import AVFoundation
import AVKit

struct Avatar: View {
    
    private var videoURL: URL?

  @State var isRecording = false
    @State private var camerashowing = false
    @State private var finalpageshowing = false
    @State private var popupshowing = true
    // addition
    @State var ButtonTitle :String = "Start Recording"

    init() {
        videoURL = Bundle.main.url(forResource: "Avatar", withExtension: "mp4")
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
              Button("Instructions") {
                  popupshowing = true
              }
              .font(.system(size: 30))
              .padding()
              .background(Color.yellow)
              .cornerRadius(10)
              .foregroundColor(.white)
              Spacer()

              VStack{
                  Spacer()
                  Spacer()
                  Spacer()
                  Spacer()
                  Spacer()
                  HStack {
                      Button("Back"){
                          camerashowing = true
                      }
                      .font(.system(size: 30))
                      .padding()
                      .background(Color.yellow)
                      .cornerRadius(10)
                      .foregroundColor(.white)
                      Spacer()
                      Button (ButtonTitle){
                          if !isRecording {
                              cameraView.startRecording()
                              ButtonTitle = "Stop Recording"
                          } else {
                              cameraView.stopRecording()
                              ButtonTitle = "Start Recording"
                          }
                          isRecording.toggle()
                      }
                      .font(.system(size: 30))
                      .padding()
                      .background(isRecording ? Color.red : Color.white)
                      .cornerRadius(10)
                      .foregroundColor(.black)
                      Spacer()
                      Button("Finish"){
                          finalpageshowing = true
                      }
                      .font(.system(size: 30))
                      .padding()
                      .background(Color.yellow)
                      .cornerRadius(10)
                      .foregroundColor(.white)
                  }
                  Spacer()
              }
              .fullScreenCover(isPresented: $camerashowing, onDismiss: {}, content: {ContentView()})
              .fullScreenCover(isPresented: $finalpageshowing, onDismiss: {}, content: {Finalpage()})
              .sheet(isPresented:$popupshowing,onDismiss:{},content:{PopUp()})
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
