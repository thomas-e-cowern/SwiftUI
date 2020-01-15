//
//  PlayerRow.swift
//  SwiftUIMBAExample
//
//  Created by Thomas Cowern New on 1/13/20.
//  Copyright © 2020 Thomas Cowern New. All rights reserved.
//

import SwiftUI

struct PlayerRow: View {
    
    // Properties
    var player: Player
    
    
    var body: some View {
        
        HStack {Image(player.imageName).resizable().aspectRatio(contentMode: .fit).clipShape(Circle()).background(Circle()).foregroundColor(player.team.color).overlay(Circle().stroke(Color.white, lineWidth: 4))
            Text(player.name).font(.largeTitle).lineLimit(1).minimumScaleFactor(0.6)
            Spacer()
        }.minimumScaleFactor(0.6)
    }
}

struct PlayerRow_Previews: PreviewProvider {
    static var previews: some View {
        PlayerRow(player: players[0]).previewLayout(.fixed(width: 500, height: 100))
    }
}
