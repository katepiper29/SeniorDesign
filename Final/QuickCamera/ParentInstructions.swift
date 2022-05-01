//
//  ParentInstructions.swift
//  QuickCamera
//
//  Created by Rachel Cutlan on 4/1/22.
//  This page provides initial instructions to the parents

import SwiftUI

struct ParentInstructions: View {
    @State private var page3showing = false
    var body: some View {
        ZStack{
            // place background here
            Image("BunnyVertical")
                .resizable()
            VStack{
                Spacer()
                Text("Welcome Parents/Guardians")
                    .font(.system(size: 60,weight: .heavy))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .minimumScaleFactor(0.01)
                    .padding(50)
                Text("Thank you so much for agreeing to participate in the development of this technology. During this test, your child will be participating in a game where they will follow along with movements performed by a bunny.")
                    .font(.system(size: 30,weight: .bold))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .minimumScaleFactor(0.01)
                
                    Spacer()
                Text("Please:")
                    .font(.system(size: 40,weight: .bold))
                    .foregroundColor(.black)
                    .minimumScaleFactor(0.01)

                Text("-Help them with the setup")
                    .font(.system(size: 30,weight: .semibold))
                    .foregroundColor(.black)
                    .minimumScaleFactor(0.01)

                Text("-Let them do the movements ON THEIR OWN")
                    .font(.system(size: 30,weight: .semibold))
                    .foregroundColor(.black)
                    .minimumScaleFactor(0.01)
                
                Spacer()
                Text("Thank you so much for your participation!")
                    .font(.system(size: 40,weight: .bold))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .minimumScaleFactor(0.01)

                Button("Click here when you are ready to play!")
                    {
                    page3showing = true
                }
                    .font(.system(size: 30))
                    .background(Color.yellow)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(40)
                    .minimumScaleFactor(0.01)

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
