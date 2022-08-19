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
        let shape = RoundedRectangle(cornerRadius: 20)
        ZStack() {
            if card.isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(card.content)
                .font(.largeTitle)
                .padding()
            } else if card.isMatched {
                shape.opacity(0.0)
            } else {
                shape.fill()
            }
        }
    }
}
