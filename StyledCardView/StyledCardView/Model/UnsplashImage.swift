//
//  UnsplashImage.swift
//  CardView
//
//  Created by denpazakura on 24/05/2021.
//

import Foundation

struct UnsplashImage: Codable, Hashable {
    var name: String
    var creator: String
    var url: String
    var contentStyle: String?
}
