//
//  ContentView.swift
//  Memorize_2
//
//  Created by Sergey Lukaschuk on 02.08.2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel: EmojiMemoryGame

    var body: some View {
        // MARK: Card
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 70))]) {
                ForEach(viewModel.cards) { card in
                    CardView(card: card).aspectRatio(2/3, contentMode: .fit)
                        .onTapGesture { viewModel.choose(card) }
                }
            }
        }
        .foregroundColor(.red)
        .padding()
    }
}

// MARK: View of Card
struct CardView: View {
    var card: MemoryGame<String>.Card

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

// MARK: Previews
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGame()
        ContentView(viewModel: game)
            .preferredColorScheme(.light)
            
        ContentView(viewModel: game)
            .preferredColorScheme(.dark)
    }
}
