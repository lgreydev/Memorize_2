//
//  ContentView.swift
//  Memorize_2
//
//  Created by Sergey Lukaschuk on 02.08.2022.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    
    @ObservedObject var game: EmojiMemoryGame

    var body: some View {
        AspectVGrid(items: game.cards, aspectRatio: 2/3, content: { card in
            CardView(card).aspectRatio(2/3, contentMode: .fit)
                .onTapGesture { game.choose(card) }
        })
        .foregroundColor(.red)
        .padding()
        .preferredColorScheme(.dark)
    }
}







// MARK: Previews
struct EmojiMemoryGameView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGame()
        EmojiMemoryGameView(game: game)
            .preferredColorScheme(.light)

        EmojiMemoryGameView(game: game)
            .preferredColorScheme(.dark)
    }
}
