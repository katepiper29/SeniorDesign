///// Copyright (c) 2020 Razeware LLC
/// 
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
/// 
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
/// 
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
/// 
/// This project and source code may use libraries or frameworks that are
/// released under various Open-Source licenses. Use of those libraries and
/// frameworks are governed by their own individual licenses.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.
///


// This page sets up the camera

import SwiftUI
import AVFoundation
import AVKit
import UIKit


struct ContentView: View {
    
  @State var isRecording = false
    @State private var page4showing = false
    @State private var avatarshowing = false
    @State private var popup_cameracheck_showing = true

    @State var orientation:UIDeviceOrientation = UIDevice.current.orientation
  
    var cameraView = CameraView()
    
    //LOCKS THE ENTIRE APP IN PORTRAIT
    var supportedInterfaceOrientations: UIInterfaceOrientationMask{
        if UIDevice.current.userInterfaceIdiom == .pad{
            return .portrait
        }
        else{
            return .portrait
        }
    }

    var body: some View {
        VStack {
            ZStack {
                cameraView
          Spacer()
          HStack {
            Spacer()
              VStack{
                  Button("Instructions") {
                      popup_cameracheck_showing = true
                  }
                  .font(.system(size: 30))
                  .padding()
                  .background(Color.yellow)
                  .cornerRadius(10)
                  .foregroundColor(.white)
                  Spacer()
                  Spacer()
                  Spacer()
                  Spacer()
                  Spacer()
                  Spacer()
            HStack{
                Button("Back"){
                      page4showing = true
                  }
                  .font(.system(size: 30))
                  .padding()
                  .background(Color.yellow)
                  .cornerRadius(10)
                  .foregroundColor(.white)
                  
                Spacer()
                Spacer()
                Spacer()
                
                Button("Next"){
                  avatarshowing = true
              }
                .font(.system(size: 30))
                .padding()
                .background(Color.yellow)
                .cornerRadius(10)
                .foregroundColor(.white)
                
            }   //HStack
            Spacer()
        }
    }
          .fullScreenCover(isPresented:$page4showing, onDismiss:{}, content:{Page4()})
          .fullScreenCover(isPresented:$avatarshowing, onDismiss:{}, content:{Avatar()})
          .sheet(isPresented:$popup_cameracheck_showing,onDismiss:{},content:{PopUpCheckCamera()})
          }
            .onAppear {
            print("Here")
                UIDevice.current.setValue(UIInterfaceOrientation.portrait.rawValue, forKey: "orientation") // Forcing the rotation to portrait
        }
        
    }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView().previewLayout(.fixed(width:568,height:320))
    }
}

