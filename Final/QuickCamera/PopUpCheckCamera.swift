//
//  PopUpCheckCamera.swift
//  QuickCamera
//
//  Created by Kate Piper on 4/7/22.
//

import SwiftUI

struct PopUpCheckCamera: View {
    
    var body: some View {
        VStack{
            Text("Parents: Please make sure your child is within view of the camera.")
                .padding(20)
                .multilineTextAlignment(.center)
            Text("Swipe down to remove these instructions.")
        }
    }
}

struct PopUpCheckCamera_Previews: PreviewProvider {
    static var previews: some View {
        PopUp()
    }
}
