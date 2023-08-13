//
//  CustomAlignmentGuide.swift
//  Layout&Geometry
//
//  Created by Brandon Johns on 8/12/23.
//

import SwiftUI

extension VerticalAlignment {
    enum MidAccountAndName: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[.top]
        }
    }
    
    static let midAccountAndName = VerticalAlignment(MidAccountAndName.self)
}



struct CustomAlignmentGuide: View {
    var body: some View {
        HStack(alignment: .midAccountAndName) {
                VStack {
                    Text("Ellie")
                        .alignmentGuide(.midAccountAndName) { d in d[VerticalAlignment.center] }
                    Image("Ellie")
                        .resizable()
                        .frame(width: 64, height: 64)
                }

                VStack {
                    Text("Full name:")
                    Text("Eleanor Johns")
                        .alignmentGuide(.midAccountAndName) { d in d[VerticalAlignment.center] }
                        .font(.largeTitle)
                }
            }
        }
}

struct CustomAlignmentGuide_Previews: PreviewProvider {
    static var previews: some View {
        CustomAlignmentGuide()
    }
}
