//
//  Finalpage.swift
//  QuickCamera
//
//  Created by Rachel Cutlan on 4/2/22.
//

import SwiftUI

struct Finalpage: View {
    @State private var page1showing = false
    var body: some View {
        ZStack{
            Image("BunnyVertical")
                .resizable()
            VStack{
                Text("Congratulations!")
                    .fontWeight(.heavy)
                    .padding()
                Button("Return to Home") {
                    page1showing = true
                }
                Button("Upload your video") {
                    UIApplication.shared.open(URL(string: "https://account.box.com/login")! as URL, options: [:],completionHandler:nil)
                }
            
            }
            .fullScreenCover(isPresented: $page1showing, onDismiss: {}, content: {Page1()})
        }
    }
}

struct Finalpage_Previews: PreviewProvider {
    static var previews: some View {
        Finalpage()
        Finalpage().previewLayout(.fixed(width:568,height:320))
    }
}
