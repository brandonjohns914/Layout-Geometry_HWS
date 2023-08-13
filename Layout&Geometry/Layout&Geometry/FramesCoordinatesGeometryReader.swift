//
//  FramesCoordinatesGeometryReader.swift
//  Layout&Geometry
//
//  Created by Brandon Johns on 8/12/23.
//

import SwiftUI

struct OuterView: View {
    var body: some View {
        VStack {
            Text("Top")
            InnerView()
                .background(.green)
            Text("Bottom")
        }
    }
}

struct InnerView: View {
    var body: some View {
        HStack {
            Text("Left")
            
            GeometryReader { geo in
                Text("Center")
                    .background(.blue)
                    .onTapGesture {
                        print("Global center : \(geo.frame(in: .global).minX) x \(geo.frame(in: .global).minY)" )
                        print("Local center : \(geo.frame(in: .local).minX) x \(geo.frame(in: .local).minY)" )
                        print("Custom center : \(geo.frame(in: .named("Custom")).minX) x \(geo.frame(in: .named("Custom")).minY)" )
                    }
            }
            .background(.orange)
            Text("Right")
        }
    }
}

struct FramesCoordinatesGeometryReader: View {
    var body: some View {
           OuterView()
            .background(.red)
            .coordinateSpace(name: "Custom")
        }
}

struct FramesCoordinatesGeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        FramesCoordinatesGeometryReader()
    }
}
