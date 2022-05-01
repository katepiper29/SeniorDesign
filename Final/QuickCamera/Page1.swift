//
//  Page1.swift
//  QuickCamera
//
//  Created by Kate Piper on 4/1/22.
// This page is the page that opens when the application opens

import SwiftUI

struct Page1: View {
    
    // Tape page
    @State private var page3showing = false
    
    // Parent instruction page
    @State private var ParentInstructionsshowing = false
    
    var body: some View {
        ZStack{
            // place background here
            Image("BunnyVertical")
                .resizable()
            VStack{
                Spacer()
                Text("Welcome to Follow the Bunny!")
                    .font(.system(size: 60))
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .minimumScaleFactor(0.01)
                    /* Original
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 60))
                    .padding(40)
                     */
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                HStack{
                    Spacer()
                    Button("Parent Help Page") {
                        ParentInstructionsshowing = true
                    }
                    .font(.system(size: 30))
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    Spacer()
                    Button("Start"){
     
                        page3showing = true
                    }
                    .font(.system(size: 30))
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .padding(40)
                    
                    Spacer()
                }   //HStack
                Spacer()
            }
            .fullScreenCover(isPresented: $page3showing, onDismiss: {}, content: {Page3()})
                             
            .fullScreenCover(isPresented: $ParentInstructionsshowing, onDismiss: {}, content: {ParentInstructions()})
            
        }
    }
}

struct Page1_Previews: PreviewProvider {
    static var previews: some View {
        Page1()
        Page1().previewLayout(.fixed(width:568,height:320))
    }
}
