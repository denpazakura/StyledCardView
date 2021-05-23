//
//  MainView.swift
//  StyledCardView
//
//  Created by denpazakura on 23/05/2021.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            MinimalStyleContentView()
                .tabItem {
                    Text("Minimal")
                }
            RoundedStyleContentView()
                .tabItem {
                    Text("Rounded")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
