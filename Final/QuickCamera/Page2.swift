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
            Image("Bunnybackground")
                .resizable()
            VStack {
                Text("Please Make Sure the Device is Horizontal!")
                    .padding()
                Button("I am Horizontal!") {
                    page3showing = true
                }
                .background(Color.yellow)
            }
            .sheet(isPresented: $page3showing, onDismiss: {}, content:{Page3()})
        }
    }
}

struct Page2_Previews: PreviewProvider {
    static var previews: some View {
        Page2()
        Page2().previewLayout(.fixed(width:568,height:320))
    }
}
