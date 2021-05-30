//
//  UnsplashImageCard.swift
//  StyledCardView
//
//  Created by denpazakura on 30/05/2021.
//

import Foundation

struct UnsplashImageCard {
    var isExpanded = false
    var image: UnsplashImage

    init(imageData: UnsplashImage) {
        self.image = imageData
    }
}
