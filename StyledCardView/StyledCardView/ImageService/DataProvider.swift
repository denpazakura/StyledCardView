//
//  DataProvider.swift
//  CardView
//
//  Created by denpazakura on 24/01/2021.
//

import Foundation

class DataProvider {
    private let bundle: Bundle
    
    init(bundle: Bundle) {
        self.bundle = bundle
    }
    
    func unplpashData() -> [UnsplashImage] {
        bundle.decode("unplash.json")
    }
    
    func minimalisticStyleImages() -> [UnsplashImage] {
        unplpashData().filter{ $0.style == "minimalistic" }
    }
}
