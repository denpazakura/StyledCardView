//
//  ContentView.swift
//  CardView
//
//  Created by denpazakura on 7/02/2021.
//

import SwiftUI

struct RoundedCornerStyleContentView: View {
    private let dataProvider: DataProvider = DataProvider(bundle: .main)
    
    @State private var images = [UnsplashImage]()

    var body: some View {
        ScrollView {
            LazyVStack(spacing: 5) {
                ForEach(dataProvider.minimalisticStyleImages(), id: \.self) { image in
                    CardView(image: image, style: .minimalistic)
                }
            }
        }
        .padding([.top, .horizontal])
    }
}

struct RoundedCornerStyleContentView_Previews: PreviewProvider {
    static var previews: some View {
        MinimalStyleContentView()
    }
}
