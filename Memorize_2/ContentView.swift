//
//  ContentView.swift
//  Memorize_2
//
//  Created by Sergey Lukaschuk on 02.08.2022.
//

import SwiftUI

struct ContentView: View {

    let emojis = ["🚗", "🚜", "🚁", "🚀", "🚌", "🚛", "🚒", "🚎", "🛻", "🏍", "✈️", "🚂", "🛳", "🛸", "🛴", "🛵", "🚕", "⛵️", "🛰", "🚃", "🚠", "🚲", "🏎", "🚓"]

    @State private var emojiCount = 20

    var body: some View {
        VStack {
            // MARK: Card
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 70))]) {
                    ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                        CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
        }
        .foregroundColor(.red)
        .padding()
    }
}

private extension ContentView {
    var remove: some View {
        Button {
            if emojiCount > 1 { emojiCount -= 1 }
        } label: {
            ZStack {
                Image(systemName: "minus.circle")
            }
        }
    }
}

// MARK: View of Card
struct CardView: View {

    @State var isFaceUp: Bool = true

    var content: String

    var body: some View {

        let shape = RoundedRectangle(cornerRadius: 20)

        ZStack() {
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content)
                .font(.largeTitle)
                .padding()
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

// MARK: Previews
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)

        ContentView()
            .preferredColorScheme(.dark)
    }
}
