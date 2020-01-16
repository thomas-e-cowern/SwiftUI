//
//  CapitalStatText.swift
//  SwiftUIMBAExample
//
//  Created by Thomas Cowern New on 1/13/20.
//  Copyright © 2020 Thomas Cowern New. All rights reserved.
//

import SwiftUI

struct CapitalStatText: View {
    
    var statName: String
    var statValue: String
    
    var body: some View {
        HStack {
            Text(statName + ":").font(.system(size: 45)).fontWeight(.bold).padding(.leading, 30)
            Text(statValue).font(.system(size: 45)).fontWeight(.light).padding(.trailing, 30)
            Spacer()
        }.minimumScaleFactor(0.6)
    }
}

struct CapitalStatText_Previews: PreviewProvider {
    static var previews: some View {
        CapitalStatText(statName: "Steph", statValue: "32")
    }
}
