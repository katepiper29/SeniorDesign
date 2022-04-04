//
//  ParentInstructions.swift
//  QuickCamera
//
//  Created by Rachel Cutlan on 4/1/22.
// ugh

import SwiftUI

struct ParentInstructions: View {
    @State private var page2showing = false
    var body: some View {
        ZStack{
            // place background here
            Image("Bunnybackground")
                .resizable()
            VStack{
                Text("Welcome Parents/Guardians")
                    .fontWeight(.bold)
                    .font(.title)
                    .padding()
                Text("Thank you so much for agreeing to participate in the remote motor development study")
                    .multilineTextAlignment(.center)
                    .padding()
                Text("During this test, your child will be participating in a game where they will dance along with the movement performed by a bunny")
                    .multilineTextAlignment(.center)
                    .padding()
                Text("Please")
                    .padding()
                Text("Help them with the setup")
                    .padding()
                Text("And then")
                    .padding()
                Text("Let them do the movements ON THEIR OWN")
                    .padding()
                Text("Thank you so much for your participation")
                    .padding()
                Button("Click Here when you are ready to play!")
                    {
                    page2showing = true
                }
                .fullScreenCover(isPresented: $page2showing, onDismiss: {}, content: {Page2()})
                
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
