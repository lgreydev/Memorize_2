//
//  MemoryGame.swift
//  Memorize_2
//
//  Created by Sergey Lukaschuk on 10.08.2022.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>

    func choose(_ card: Card) {

    }


    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}

// Foo
let model = MemoryGame(cards: [MemoryGame.Card(isFaceUp: true, isMatched: true, content: "")])

