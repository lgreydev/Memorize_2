//
//  ContentView.swift
//  Memorize_2
//
//  Created by Sergey Lukaschuk on 02.08.2022.
//

import SwiftUI

struct ContentView: View {

    @State private var emojis = ["🚗", "🚜", "🚁", "🚀", "🚀", "🚌", "🚛", "🚒", "🚎", "🛻", "🏍", "✈️", "🚂", "🛳", "🛸", "🛴", "🛵"]

    @State private var emojiCount = 4

    var body: some View {
        VStack {
            // MARK: Card
            HStack {
                ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                    CardView(content: emoji)
                }
            }

            Spacer(minLength: 30)

            // MARK: Buttons
            HStack {
                remove
                Spacer()
                add
            }
            .font(.largeTitle)
            .padding(.horizontal)
        }
        .padding()
        .foregroundColor(.red)
    }
}

private extension ContentView {
    var remove: some View {
        Button(action: {
            if emojiCount > 1 { emojiCount -= 1 }
        }, label: {
            ZStack {
                Image(systemName: "minus.circle")
            }
        })
    }

    var add: some View {
        Button(action: {
            if emojiCount < emojis.count { emojiCount += 1 }
        }, label: {
            ZStack {
                Image(systemName: "plus.circle")
            }
        })
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
                shape.stroke(lineWidth: 3)
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
