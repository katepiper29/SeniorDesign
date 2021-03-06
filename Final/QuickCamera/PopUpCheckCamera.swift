//
//  PopUpCheckCamera.swift
//  QuickCamera
//
//  Created by Kate Piper on 4/7/22.
// This is a pop up page with instructions for the parent on the camera

import SwiftUI

struct PopUpCheckCamera: View {
    
    var body: some View {
        ZStack{
            Color.cyan
            VStack{
                Text("Parents: Please make sure your child is within view of the camera.")
                    .padding(20)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 30, weight: .semibold))
                Text("Swipe down to remove these instructions.")
                    .font(.system(size: 20, weight: .regular))
            }
        }
    }
}

struct PopUpCheckCamera_Previews: PreviewProvider {
    static var previews: some View {
        PopUp()
    }
}
