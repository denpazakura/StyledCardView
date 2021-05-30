//
//  CardView.swift
//  CardView
//
//  Created by denpazakura on 10/05/2021.
//

import SwiftUI

struct CardView: View {    
    private var imageCard: UnsplashImageCard
    private let style: CardStyle
    
    @State var contentMode = ContentMode.fit
    @State var isExpanded = false
    @State private var isFullScreen = false

    init(imageCard: UnsplashImageCard,
         style: CardStyle) {
        self.imageCard = imageCard
        self.style = style
    }
    
    var body: some View {
            VStack {
                ZStack {
                    Image(imageCard.image.name)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: imageCard.isExpanded ? UIScreen.main.bounds.height : 300, alignment: .leading)
                        .clipped()
                    HStack {
                        
                        if(self.imageCard.isExpanded) {
                            Spacer()
                        }
                        
                        VStack(alignment: .leading) {
                            Text(verbatim: imageCard.image.creator)
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
        CardView(imageCard: UnsplashImageCard(imageData: UnsplashImage(name: "laura_adai",
                                                                            creator: "Laura Adai",
                                                                            url: " https://unsplash.com/photos/jFvhaeH1dJk", contentStyle: "minimal")), style: .minimalistic)
    }
}
