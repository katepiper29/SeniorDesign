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
                    .font(.system(size: 50))
                    .padding()
                HStack{
                    
                Spacer()
                    
                Button("Return to Home") {
                    page1showing = true
                }
                .font(.system(size: 30))
                .padding()
                .background(Color.yellow)
                .cornerRadius(10)
                .foregroundColor(.white)
                    
                Spacer()
                    
                Button("Upload Your Video") {
                    UIApplication.shared.open(URL(string: "https://account.box.com/login")! as URL, options: [:],completionHandler:nil)
                }
                .font(.system(size: 30))
                .padding()
                .background(Color.yellow)
                .cornerRadius(10)
                .foregroundColor(.white)
                    
                Spacer()
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
