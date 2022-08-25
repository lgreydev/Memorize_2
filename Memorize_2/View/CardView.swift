//
//  CardView.swift
//  Memorize_2
//
//  Created by Sergey Lukaschuk on 19.08.2022.
//

import SwiftUI

struct CardView: View {
    var card: EmojiMemoryGame.Card

    init(_ card: EmojiMemoryGame.Card) {
        self.card = card
    }

    var body: some View {
        GeometryReader { geometry in
            let shape = RoundedRectangle(cornerRadius: Constants.cornerRadius)
            ZStack() {
                if card.isFaceUp {
                    shape.fill().foregroundColor(.white)
                    shape.strokeBorder(lineWidth: Constants.lineWidth)
                    Text(card.content).font(Font.system(size: min(geometry.size.width, geometry.size.height) * Constants.fontScale))
                } else if card.isMatched {
                    shape.opacity(0.0)
                } else {
                    shape.fill()
                }
            }
        }
    }

    private struct Constants {
        static let cornerRadius: CGFloat = 20
        static let lineWidth: CGFloat = 3
        static let fontScale: CGFloat = 0.8
    }
}
