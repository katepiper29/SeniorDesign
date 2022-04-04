//
//  Page2.swift
//  QuickCamera
//
//  Created by Kate Piper on 4/1/22.
//

import SwiftUI

struct Page2: View {
    @State private var page3showing = false
    
    var body: some View {
        ZStack{
            // place background here
            Image("BunnyVertical")
                .resizable()
            VStack {
                Text("Please Make Sure the Device is Horizontal!")
                    .font(.system(size: 60))
                    .multilineTextAlignment(.center)
                    .padding(40)
                Button("I am Horizontal!") {
                    page3showing = true
                }
                .font(.system(size: 40))
                .padding()
                .background(Color.yellow)
                .cornerRadius(10)
                .foregroundColor(.white)
            }
            .fullScreenCover(isPresented: $page3showing, onDismiss: {}, content:{Page3()})

        }
    }
}

struct Page2_Previews: PreviewProvider {
    static var previews: some View {
        Page2()
        Page2().previewLayout(.fixed(width:568,height:320))
    }
}
