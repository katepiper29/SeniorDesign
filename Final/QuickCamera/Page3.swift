//
//  Page3.swift
//  QuickCamera
//
//  Created by Rachel Cutlan on 4/1/22.
//

import SwiftUI

struct Page3: View {
    @State private var page4showing = false
    
    var body: some View {
        ZStack{
            Image("Bunnybackground")
                .resizable()
            VStack{
                Text("Please place a piece of tape on the ground as shown")
                    .padding()
                Button("Next!"){
                    page4showing = true
                }
                .background(Color.yellow)
            }
            .fullScreenCover(isPresented: $page4showing, onDismiss: {}, content: {Page4()})
        }
    }
}

struct Page3_Previews: PreviewProvider {
    static var previews: some View {
        Page3()
        Page3().previewLayout(.fixed(width:568,height:320))
    }
}
