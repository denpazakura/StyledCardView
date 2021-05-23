//
//  CardView.swift
//  CardView
//
//  Created by denpazakura on 10/05/2021.
//

import SwiftUI

struct CardView: View {
    private let image: UnsplashImage
    private let style: CardStyle
        
    init(image: UnsplashImage,
         style: CardStyle) {
        self.image = image
        self.style = style
    }
    
    var body: some View {
        VStack {
            ZStack {
                Image(image.name)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text(verbatim: image.creator)
                        Text("subtitleText")
                            .font(.subheadline)
                    }
                    .layoutPriority(100)
                    
                    Spacer()
                }
                .padding()
            }
        }
        .cardStyle(style: style)
    }
}

private extension View {
    func cardStyle(style: CardStyle) -> some View {
        switch style {
        case .minimalistic:
            return AnyView(modifier(CardModifierMinimal()))
        case .roundedCorners:
           return AnyView(modifier(CardModifierRounded()))
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(image: UnsplashImage.init( name: "laura_adai",
                                            creator: "Laura Adai",
                                            url: " https://unsplash.com/photos/jFvhaeH1dJk", contentStyle: "minimal"), style: .minimalistic)
    }
}
