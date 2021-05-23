//
//  DataProvider.swift
//  CardView
//
//  Created by denpazakura on 24/05/2021.
//

import Foundation

struct DataProvider {
    var bundle: Bundle
    
    func images() -> [UnsplashImage] {
        bundle.decode("unsplash.json")
    }
    
    func minimalStyleImages() -> [UnsplashImage] {
        self.images().filter({ $0.contentStyle == "minimal" })
    }
    
    func roundedCornersStyleImages() -> [UnsplashImage] {
        self.images().filter({ $0.contentStyle == "rounded" })
    }
}
