//
//  ContentView.swift
//  CardView
//
//  Created by denpazakura on 7/05/2021.
//

import SwiftUI

struct RoundedStyleContentView: View {
    
    @State private var cards = [UnsplashImageCard]()
    
    @State var isExpanded: Bool = false
    
    init(imageProvider: DataProvider) {
        let imageData = imageProvider.roundedCornersStyleImages()
        let cards =  imageData.map { UnsplashImageCard.init(imageData: $0) }
        
        self._cards = /*State<[UnsplashImageCard>*/.init(initialValue: cards)
    }
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                LazyVStack(spacing: 5) {
                    ForEach(0..<cards.count) { i in
                        CardView(imageCard: cards[i], style: .roundedCorners)
                            .onTapGesture {
                                withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.8, blendDuration: 0)) {
                                    isExpanded.toggle()
                                    cards[i].isExpanded.toggle()
                                }
                            }
                            .frame(height: cards[i].isExpanded ? UIScreen.main.bounds.height : 300)
                    }
                    
                }
                
            }
            .padding([.top, .horizontal])
            
        }
    }
}

struct RoundedStyleContentView_Previews: PreviewProvider {
    static var previews: some View {
        RoundedStyleContentView(imageProvider: DataProvider.init(bundle: .main))
    }
}
