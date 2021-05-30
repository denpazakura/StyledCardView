//
//  ContentView.swift
//  CardView
//
//  Created by denpazakura on 10/05/2021.
//

import SwiftUI

struct MinimalStyleContentView: View {
    
    @State private var cards = [UnsplashImageCard]()
    
    @State var isExpanded: Bool = false
    
    init(imageProvider: DataProvider) {
        let imageData = imageProvider.minimalStyleImages()
        let cards =  imageData.map { UnsplashImageCard.init(imageData: $0) }
        
        self._cards = /*State<[UnsplashImageCard>*/.init(initialValue: cards)
    }
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                LazyVStack(spacing: 5) {
                    ForEach(0..<cards.count) { i in
                        CardView(imageCard: cards[i], style: .minimalistic)
                            .onTapGesture {
                                withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.8, blendDuration: 0)) {
                                    isExpanded.toggle()
                                    cards[i].isExpanded.toggle()
                                }
                            }
                            .frame(height: cards[i].isExpanded ? UIScreen.main.bounds.height : 250)
                    }
                    
                }
                
            }
            .padding([.top, .horizontal])
            
        }
    }
}

struct MinimalStyleContentView_Previews: PreviewProvider {
    static var previews: some View {
        MinimalStyleContentView(imageProvider: DataProvider.init(bundle: .main))
    }
}
