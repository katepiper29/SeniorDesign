//
//  Page4.swift
//  QuickCamera
//
//  Created by Rachel Cutlan on 4/1/22.

// Page to check camera view
//

import SwiftUI
import AVKit

struct Page4: View {
    
    // back button to tape page
    @State private var page3showing = false
    
    // open camera page
    @State private var camerashowing = false
    
    var body: some View {
        ZStack{
            Image("BunnyVertical")
                .resizable()
            VStack{
                Spacer()
                Text("Please make sure your whole body is visible.")
                
                    .font(.system(size: 60,weight: .bold))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .minimumScaleFactor(0.01)
                    .padding(40)
                Image("")
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                HStack{
                    Spacer()
                    Button("Back"){
                        page3showing = true
                    }
                    .font(.system(size: 30))
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    
                        Spacer()
                        
                    Button("Check Camera"){
                        camerashowing = true
                    }
                    .font(.system(size: 30))
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    
                    Spacer()
                }   // HStack
                Spacer()
            }   // VStack
                
        }   // ZStack
        .fullScreenCover(isPresented: $page3showing, onDismiss: {}, content: {Page3()})
            .fullScreenCover(isPresented: $camerashowing, onDismiss: {}, content: {ContentView()})
        }
    }

struct Page4_Previews: PreviewProvider {
    static var previews: some View {
        Page4()
        Page4().previewLayout(.fixed(width:568,height:320))
    }
}
