//
//  ExpandModifier.swift
//  StyledCardView
//
//  Created by denpazakura on 25/05/2021.
//

import SwiftUI

struct ExpandModifier: AnimatableModifier {
    var height: CGFloat = 0

    var animatableData: CGFloat {
        get { height }
        set { height = newValue }
    }

    func body(content: Content) -> some View {
        content.frame(height: height)
    }
}
