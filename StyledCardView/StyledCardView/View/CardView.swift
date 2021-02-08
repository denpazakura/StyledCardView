//
//  CardView.swift
//  CardView
//
//  Created by denpazakura on 10/01/2021.
//

import SwiftUI

struct CardView: View {
    private var titleText: String
    private var subtitleText: String
    
    init(titleText: String,
         subtitleText: String) {
        self.titleText = titleText
        self.subtitleText = subtitleText
    }
    
    var body: some View {
        VStack {
            ZStack {
                Image("alina_rubo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                HStack {
                    
                    VStack(alignment: .leading) {
                        Text(titleText)
                            .font(.largeTitle)
                            .foregroundColor(.primary)
                        Text(subtitleText)
                            .font(.subheadline)
                    }
                    .layoutPriority(100)
                    
                    Spacer()
                }
                .padding()
            }
        }
        .cardStyle()
    }
}

private extension View {
    func cardStyle(color: Color = .black) -> some View {
        self.modifier(CardModifierMinimal(color: Color.black))
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(titleText: "Card title", subtitleText: "subtitle")
    }
}
