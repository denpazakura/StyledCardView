//
//  MainView.swift
//  StyledCardView
//
//  Created by denpazakura on 23/05/2021.
//

import SwiftUI

struct MainView: View {
    private var dataProvider = DataProvider(bundle: .main)
    
    var body: some View {
        TabView {
            RoundedStyleContentView(imageProvider: dataProvider)
                .tabItem {
                    Text("Rounded")
                }
            
            MinimalStyleContentView(imageProvider: dataProvider)
                .tabItem {
                    Text("Minimal")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
