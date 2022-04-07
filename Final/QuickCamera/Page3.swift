//
//  Page3.swift
//  QuickCamera
//
//  Created by Rachel Cutlan on 4/1/22.
//

import SwiftUI

struct Page3: View {
    @State private var page1showing = false
    @State private var page4showing = false
    
    var body: some View {
        ZStack{
            Image("BunnyVertical")
                .resizable()
            VStack{
                Text("Please place a piece of tape on the ground as shown")
                    .font(.system(size: 60))
                    .multilineTextAlignment(.center)
                    .padding(40)
                Button("Next!"){
                    page4showing = true
                }
                .font(.system(size: 40))
                .padding()
                .background(Color.yellow)
                .cornerRadius(10)
                .foregroundColor(.white)
                Button("Back"){
                    page1showing = true
                }
                .font(.system(size: 20))
                .padding()
                .background(Color.yellow)
                .cornerRadius(10)
                .foregroundColor(.white)
            }
            .fullScreenCover(isPresented: $page1showing, onDismiss: {}, content: {Page1()})
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
