//
//  Page2.swift
//  QuickCamera
//
//  Created by Kate Piper on 4/1/22.
//

import SwiftUI

struct Page2: View {
    var body: some View {
        Text("Please Make Sure the Device is Horizontal!")
    }
}

struct Page2_Previews: PreviewProvider {
    static var previews: some View {
        Page2()
        Page2().previewLayout(.fixed(width:568,height:320))
    }
}
