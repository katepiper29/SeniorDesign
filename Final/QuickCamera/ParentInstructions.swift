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
                Text("Welcome Parents/Guardians")
                    .font(.largeTitle)
                    .foregroundColor(.yellow)
                    .fontWeight(.bold)
                    //.font(.title)
                    .padding()
                Text("Thank you so much for agreeing to participate in the remote motor development study")
                    .multilineTextAlignment(.center)
                    .font(.system(size: 30))
                    .padding()
                Text("During this test, your child will be participating in a game where they will dance along with the movement performed by a bunny")
                    .multilineTextAlignment(.center)
                    .font(.system(size: 30))
                    .padding()
                Text("Please")
                    .font(.system(size: 30))
                   // .padding()
                Text("Help them with the setup")
                    .font(.system(size: 30))
                    .padding()
                Text("And then")
                    .font(.system(size: 30))
                   // .padding()
                Text("Let them do the movements ON THEIR OWN")
                    .font(.system(size: 30))
                    .padding()
                Text("Thank you so much for your participation")
                    .font(.system(size: 40))
                    .padding()
                Button("Click Here when you are ready to play!")
                    {
                    page3showing = true
                }
                    .font(.system(size: 30))
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(10)
                    .foregroundColor(.white)
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
