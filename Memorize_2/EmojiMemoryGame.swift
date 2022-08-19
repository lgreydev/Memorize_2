//
//  EmojiMemoryGame.swift
//  Memorize_2
//
//  Created by Sergey Lukaschuk on 10.08.2022.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card

    private static let emojis = ["🚗", "🚜", "🚁", "🚀", "🚌", "🚛", "🚒", "🚎", "🛻", "🏍", "✈️", "🚂", "🛳", "🛸", "🛴", "🛵", "🚕", "⛵️", "🛰", "🚃", "🚠", "🚲", "🏎", "🚓"]
 
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 10) { pairIndex in
            emojis[pairIndex]
        }
    }

    @Published private var model = createMemoryGame()

    var cards: Array<Card> {
         model.cards
    }

    // MARK: - Intent(s)
    func choose(_ card: Card) {
        model.choose(card)
    }

}
