//
//  EmojiMemoryGame.swift
//  Memorize_2
//
//  Created by Sergey Lukaschuk on 10.08.2022.
//

import SwiftUI

class EmojiMemoryGame {

    private static let emojis = ["🚗", "🚜", "🚁", "🚀", "🚌", "🚛", "🚒", "🚎", "🛻", "🏍", "✈️", "🚂", "🛳", "🛸", "🛴", "🛵", "🚕", "⛵️", "🛰", "🚃", "🚠", "🚲", "🏎", "🚓"]

    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }

    private var model = createMemoryGame()

    var cards: [MemoryGame<String>.Card] {
        return model.cards
    }
}
