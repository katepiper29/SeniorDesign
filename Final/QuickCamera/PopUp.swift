//
//  PopUp.swift
//  QuickCamera
//
//  Created by Kate Piper on 4/4/22.
//  This pop up gives instructions for the avatar test

import SwiftUI

struct PopUp: View {
    
    var body: some View {
        ZStack{
            Color.cyan
            VStack{
                Text("Parents Please: \n -Make sure the volume is turned up\n -Start the test\n\n Once the video is done please:\n -Stop the test\n -Proceed to the next page\n Thanks!")
                    .padding(20)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 30, weight: .semibold))
                Text("Swipe down to remove these instructions.")
                    .font(.system(size: 20, weight: .regular))
            }   // VStack
        }   // ZStack
    }
}

struct PopUp_Previews: PreviewProvider {
    static var previews: some View {
        PopUp()
    }
}
