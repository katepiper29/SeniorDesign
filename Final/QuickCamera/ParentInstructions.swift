//
//  ParentInstructions.swift
//  QuickCamera
//
//  Created by Rachel Cutlan on 4/1/22.
// ugh

import SwiftUI

struct ParentInstructions: View {
    @State private var page3showing = false
    var body: some View {
        ZStack{
            // place background here
            Image("BunnyVertical")
                .resizable()
            VStack{
             //   Spacer()
                Text("Welcome Parents/Guardians")
                    .font(.system(size: 60))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.yellow)
                    .padding(20)
               //     .fontWeight(.bold)
                    //.font(.title)
                    Spacer()
                Text("Thank you so much for agreeing to participate in the remote motor development study. During this test, your child will be participating in a game where they will follow along with movements performed by a bunny.")
                    .multilineTextAlignment(.center)
                    .font(.system(size: 30))
                    Spacer()
                Text("Please:")
                    .font(.system(size: 40))
                   // .padding()
                Text("-Help them with the setup")
                    .font(.system(size: 30))
                //    .padding()
               // Text("And then")
               //     .font(.system(size: 30))
                   // .padding()
                Text("-Let them do the movements ON THEIR OWN")
                    .font(.system(size: 30))
                //    .padding()
                Spacer()
                Text("Thank you so much for your participation!")
                    .font(.system(size: 40))
                  //  .padding(20)
                Button("Click Here when you are ready to play!")
                    {
                    page3showing = true
                }
                    .font(.system(size: 30))
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .padding(40)
                  //  Spacer()
                .fullScreenCover(isPresented: $page3showing, onDismiss: {}, content: {Page3()})
                
            }
        }
    }
}

struct ParentInstructions_Previews: PreviewProvider {
    static var previews: some View {
        ParentInstructions()
        ParentInstructions().previewLayout(.fixed(width:568,height:320))
    }
}
