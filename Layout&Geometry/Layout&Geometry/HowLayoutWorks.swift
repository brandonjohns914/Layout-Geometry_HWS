//
//  HowLayoutWorks.swift
//  Layout&Geometry
//
//  Created by Brandon Johns on 8/12/23.
//


//parent proposes child size
// child chooses own size based on parents recommendation
//      parent must respect that choice
//parent positions child in its cordinate space


//HowLayoutWorks is size netural only requests how much it needs based on what the body says it needs for the view
import SwiftUI

//parent then askes SwiftUI for the space 
struct HowLayoutWorks: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/) //child
            .padding(20) // parent view
            .background(.red) // neutral
    }
}

struct HowLayoutWorks_Previews: PreviewProvider {
    static var previews: some View {
        HowLayoutWorks()
    }
}
