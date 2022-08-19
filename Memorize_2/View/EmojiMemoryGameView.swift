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
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 70))]) {
                ForEach(game.cards) { card in
                    CardView(card).aspectRatio(2/3, contentMode: .fit)
                        .onTapGesture { game.choose(card) }
                }
            }
        }
        .foregroundColor(.red)
        .padding()
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
