//
//  Finalpage.swift
//  QuickCamera
//
//  Created by Rachel Cutlan on 4/2/22.
//

import SwiftUI

struct Finalpage: View {
    var body: some View {
        ZStack{
            Image("Bunnycongrats")
                .resizable()
            VStack{
                Text("Congratulations!")
                    .fontWeight(.heavy)
            
            }
        }
    }
}

struct Finalpage_Previews: PreviewProvider {
    static var previews: some View {
        Finalpage()
        Finalpage().previewLayout(.fixed(width:568,height:320))
    }
}
