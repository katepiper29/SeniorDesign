//
//  Page4.swift
//  QuickCamera
//
//  Created by Rachel Cutlan on 4/1/22.

// commit please
//

import SwiftUI

struct Page4: View {
    @State private var camerashowing = false
    
    var body: some View {
        VStack{
        Text("Please make sure your whole body is visible")
                .padding()
            Button("Check Camera!"){
                camerashowing = true
            }
            .background(Color.yellow)
        }
        .fullScreenCover(isPresented: $camerashowing, onDismiss: {}, content: {ContentView()})
    }
}

struct Page4_Previews: PreviewProvider {
    static var previews: some View {
        Page4()
        Page4().previewLayout(.fixed(width:568,height:320))
    }
}
