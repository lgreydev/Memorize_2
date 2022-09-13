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
            ZStack() {
                PieView(starAngel: Angle(degrees: 0-90), endAngle: Angle(degrees: 110-90))
                    .padding(5)
                    .opacity(0.5)
                Text(card.content).font(font(in: geometry.size))
            }
            .modifier(Cardify(isFaceUp: card.isFaceUp))
        }
    }

    private func font(in size: CGSize) -> Font {
        Font.system(size: min(size.width, size.height) * Constants.fontScale)
    }

    private struct Constants {
        static let fontScale: CGFloat = 0.6
    }
}
