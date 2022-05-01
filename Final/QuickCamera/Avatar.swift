//
//  Avatar.swift
//  QuickCamera
//
//  Created by Rachel Cutlan on 4/2/22.
//  This page plays the avatar video and records the child

import SwiftUI
import AVFoundation
import AVKit

struct Avatar: View {
    
    private var videoURL: URL?

  @State var isRecording = false
    @State private var camerashowing = false
    @State private var finalpageshowing = false
    @State private var popupshowing = true
    // changes to buttons when clicked
    @State var ButtonTitle :String = "Start Test"
    @State var ButtonTitle2 :String = ""
    @State var ButtonTitle3 :String = "Back"
    
    init() {
        videoURL = Bundle.main.url(forResource: "Avatar", withExtension: "mp4")
    }
  
    let videoLocalNames = ["Avatar"]
    
    let video = AVPlayer(url:  Bundle.main.url(forResource: "Avatar", withExtension: "mp4")!)
    
  var cameraView = CameraView()

  var body: some View {
      ZStack{
          cameraView
          VideoPlayer(player: video)
          
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
                      Button(ButtonTitle3){
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
                              ButtonTitle = "End Test"
                              video.play()
                              ButtonTitle3 = ""
                          } else {
                              cameraView.stopRecording()
                              ButtonTitle = "Begin Test"
                              video.pause()
                              ButtonTitle2 = "Finish"
                          }
                          isRecording.toggle()
                      }
                      .font(.system(size: 30))
                      .padding()
                      .background(isRecording ? Color.red : Color.white)
                      .cornerRadius(10)
                      .foregroundColor(.black)
                      Spacer()
                      Button(ButtonTitle2){
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

