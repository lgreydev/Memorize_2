//
//  Memorize_2App.swift
//  Memorize_2
//
//  Created by Sergey Lukaschuk on 02.08.2022.
//

import SwiftUI

@main
struct Memorize_2App: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
