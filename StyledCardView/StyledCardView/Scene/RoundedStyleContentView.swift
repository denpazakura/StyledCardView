//
//  ContentView.swift
//  CardView
//
//  Created by denpazakura on 7/05/2021.
//

import SwiftUI

struct RoundedStyleContentView: View {
    private let dataProvider: DataProvider = DataProvider(bundle: .main)
    
    @State private var images = [UnsplashImage]()

    var body: some View {
        ScrollView {
            LazyVStack(spacing: 5) {
                ForEach(dataProvider.roundedCornersStyleImages(), id: \.self) { image in
                    CardView(image: image, style: .roundedCorners)
                }
            }
        }
        .padding([.top, .horizontal])
    }
}

struct RoundedStyleContentView_Previews: PreviewProvider {
    static var previews: some View {
        MinimalStyleContentView()
    }
}
