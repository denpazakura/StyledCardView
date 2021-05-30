//
//  CardModifier.swift
//  CardView
//
//  Created by denpazakura on 10/05/2021.
//

import SwiftUI

protocol CardModifierStyler {
    func basicOverlayColor() -> Color
    func headlineFont() -> Font
    func borderColor() -> Color
}

struct CardStyler: CardModifierStyler {
    func headlineFont() -> Font {
        switch self.style {
        case .minimalistic:
            return Font.system(size: 30).weight(.semibold)
        default:
            return Font.system(size: 30).weight(.bold)
        }
    }
    
    let style: CardStyle
    
    func basicOverlayColor() -> Color {
        switch self.style {
        case .minimalistic:
            return Color.black
        case .roundedCorners:
            return Color.white
        }
    }
    
    func borderColor() -> Color {
        switch self.style {
        case .minimalistic:
            return Color.clear
        case .roundedCorners:
            return Color.black
        }
    }
}

struct CardModifierMinimal: ViewModifier {
    private let styler = CardStyler(style: .minimalistic)
    
    func body(content: Content) -> some View {
        content
            .border(styler.borderColor(), width: 0)
            .font(styler.headlineFont())
            .foregroundColor(styler.basicOverlayColor())
    }}

struct CardModifierRounded: ViewModifier {
    private let styler = CardStyler(style: .roundedCorners)
    
    func body(content: Content) -> some View {
        content
            .cornerRadius(10)
            .font(styler.headlineFont())
            .foregroundColor(styler.basicOverlayColor())
    }
}

