//
//  Funny.swift
//  Animation
//
//  Created by Thomas Cowern New on 1/28/20.
//  Copyright © 2020 Thomas Cowern New. All rights reserved.
//

import SwiftUI

struct Funny: View {
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let width = geometry.size.width
                let height = geometry.size.height
                path.move(to: CGPoint(x: 0, y: 0))
                path.addLine(to: CGPoint(x: 0, y: height))
                path.addLine(to: CGPoint(x: width, y: height))
                path.addLine(to: CGPoint(x: width, y: 0))
            }.fill(LinearGradient(gradient: .init(colors: [.red, .yellow, .orange]), startPoint: .leading, endPoint: .trailing))
            Circle()
            Circle().fill(Color.yellow).padding()
        }
    }
}

struct Funny_Previews: PreviewProvider {
    static var previews: some View {
        Funny()
    }
}
