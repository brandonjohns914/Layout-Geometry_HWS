//
//  Alignment.swift
//  Layout&Geometry
//
//  Created by Brandon Johns on 8/12/23.
//

import SwiftUI

struct Alignment: View {
    var body: some View {
        VStack(alignment: .leading) {
               ForEach(0..<10) { position in
                   Text("Number \(position)")
                       .alignmentGuide(.leading) { _ in CGFloat(position) * -10 }
               }
           }
           .background(.red)
           .frame(width: 400, height: 400)
           .background(.blue)
       }
}

struct Alignment_Previews: PreviewProvider {
    static var previews: some View {
        Alignment()
    }
}
