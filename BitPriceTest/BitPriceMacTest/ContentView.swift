//
//  ContentView.swift
//  BitPriceMacTest
//
//  Created by Thomas Cowern New on 1/28/20.
//  Copyright © 2020 Thomas Cowern New. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var dataStorage = BitData()
    
    var body: some View {
        VStack { Image("btc").resizable().aspectRatio(contentMode: .fit)
            Text(dataStorage.btcPrice).font(.largeTitle).padding()
        }.frame(minWidth: 200, idealWidth: 300, maxWidth: .infinity, minHeight: 200, idealHeight: 200, maxHeight: .infinity, alignment: .bottom)
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
