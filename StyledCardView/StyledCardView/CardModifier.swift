//
//  CardModifier.swift
//  CardView
//
//  Created by denpazakura on 10/01/2021.
//

import SwiftUI

struct CardModifierCustom: ViewModifier {
    var color: Color
    var radius: CGFloat
    
    func body(content: Content) -> some View {
        content
            .cornerRadius(radius)
            .overlay(
                RoundedRectangle(cornerRadius: radius)
                    .stroke(color, lineWidth: 1)
            )
            .shadow(radius: radius)
    }
}

struct CardModifierMinimal: ViewModifier {
    var color: Color
    
    func body(content: Content) -> some View {
        content
            .border(color, width: 2)
    }
}
