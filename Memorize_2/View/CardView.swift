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
                    PieView(starAngel: Angle(degrees: 0-90), endAngle: Angle(degrees: 110-90))
                        .padding(5)
                        .opacity(0.5)
                    Text(card.content).font(font(in: geometry.size))
                } else if card.isMatched {
                    shape.opacity(0.0)
                } else {
                    shape.fill()
                }
            }
        }
    }

    private func font(in size: CGSize) -> Font {
        Font.system(size: min(size.width, size.height) * Constants.fontScale)
    }

    private struct Constants {
        static let cornerRadius: CGFloat = 10
        static let lineWidth: CGFloat = 3
        static let fontScale: CGFloat = 0.6
    }
}
