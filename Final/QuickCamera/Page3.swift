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
                Spacer()
                Text("Please place a piece of tape on the ground as shown.")
                    
                    .font(.system(size: 60,weight: .bold))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .minimumScaleFactor(0.01)
                
                    //original
                /*
                    .font(.system(size: 60))
                    .multilineTextAlignment(.center)
                    .padding() */
                Spacer()
                Image("TapeLayout")
                    .resizable()
                    .scaledToFit()
                   // .frame(width: 600.0, height: 600.0)
                    .minimumScaleFactor(0.01)
                Spacer()
                
                HStack{
                Spacer()
                    Button("Back"){
                        page1showing = true
                    }
                    .font(.system(size: 40))
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                
                Spacer()
                Spacer()
                Spacer()
                    
                    Button("Next"){
                        page4showing = true
                    }
                    .font(.system(size: 40))
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    
                Spacer()
                }
                
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
