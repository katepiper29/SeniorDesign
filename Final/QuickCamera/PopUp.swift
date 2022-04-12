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
            Text("Parents:\n Please start the recording and then play the video. When the video ends, please stop the recording and then click 'Finish'.")
                .padding(20)
                .multilineTextAlignment(.center)
                .font(.system(size: 30, weight: .semibold))
            Text("Swipe down to remove these instructions.")
                .font(.system(size: 20, weight: .regular))
        }
    }
}

struct PopUp_Previews: PreviewProvider {
    static var previews: some View {
        PopUp()
    }
}
