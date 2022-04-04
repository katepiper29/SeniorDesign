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
        ZStack{
            Image("BunnyVertical")
                .resizable()
            VStack{
            Text("Please make sure your whole body is visible")
                    .font(.system(size: 60))
                    .multilineTextAlignment(.center)
                    .padding(40)
                Button("Check Camera!"){
                    camerashowing = true
                }
                .font(.system(size: 40))
                .padding()
                .background(Color.yellow)
                .cornerRadius(10)
                .foregroundColor(.white)
            }
            .fullScreenCover(isPresented: $camerashowing, onDismiss: {}, content: {ContentView()})
        }
    }
}

struct Page4_Previews: PreviewProvider {
    static var previews: some View {
        Page4()
        Page4().previewLayout(.fixed(width:568,height:320))
    }
}
