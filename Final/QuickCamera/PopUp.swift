//
//  PopUp.swift
//  QuickCamera
//
//  Created by Kate Piper on 4/4/22.
//

import SwiftUI

struct PopUp: View {
    
    var body: some View {
        VStack{
            Text("Parents: Please start the recording and then play the video. When the video ends, please stop the recording and then click 'Finish'.")
                .padding(20)
                .multilineTextAlignment(.center)
            Text("Swipe down to remove these instructions.")
        }
    }
}

struct PopUp_Previews: PreviewProvider {
    static var previews: some View {
        PopUp()
    }
}
