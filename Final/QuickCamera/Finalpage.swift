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
            Image("Bunnycongrats")
                .resizable()
            VStack{
                Text("Congratulations!")
                    .fontWeight(.heavy)
                    .padding()
                Button("Return to Home") {
                    page1showing = true
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
