//
//  Page1.swift
//  QuickCamera
//
//  Created by Kate Piper on 4/1/22.
//

import SwiftUI

struct Page1: View {
    @State private var page2showing = false
    var body: some View {
        VStack{
        Text("Welcome to the Game!")
                .padding()
    Button("Start") {
        page2showing = true
    }
    .background(Color.yellow)
    }
        .sheet(isPresented: $page2showing, onDismiss: {}, content: {Page2()})
    }
}

struct Page1_Previews: PreviewProvider {
    static var previews: some View {
        Page1()
        Page1().previewLayout(.fixed(width:568,height:320))
    }
}
