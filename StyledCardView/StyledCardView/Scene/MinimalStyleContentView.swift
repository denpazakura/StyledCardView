//
//  ContentView.swift
//  CardView
//
//  Created by denpazakura on 10/01/2021.
//

import SwiftUI

struct MinimalStyleContentView: View {
    var body: some View {
        
        ScrollView {
            LazyVStack (spacing: 5) {
                ForEach(0..<50) { number in
                    CardView(titleText: "Card title", subtitleText: "subtitle")
                }
            }
        }
        .padding([.top, .horizontal])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MinimalStyleContentView()
    }
}
