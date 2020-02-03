//
//  ContentView.swift
//  BitPriceWatchTest Extension
//
//  Created by Thomas Cowern New on 1/29/20.
//  Copyright © 2020 Thomas Cowern New. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var dataStorage = BitData()
    
    var body: some View {
        VStack {
            Image("btc").resizable().aspectRatio(contentMode: .fit)
            Text(dataStorage.btcPrice).font(.largeTitle)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
