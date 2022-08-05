//
//  ContentView.swift
//  Memorize_2
//
//  Created by Sergey Lukaschuk on 02.08.2022.
//

import SwiftUI

struct ContentView: View {

    @State private var emojis = ["🚗", "🚜", "🚁", "🚀", "🚀", "🚌", "🚛", "🚒", "🚎", "🛻", "🏍", "✈️", "🚂", "🛳", "🛸", "🛴", "🛵"]

    private var emojiCount = 4

    var body: some View {
        VStack {
            HStack {
                ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                    CardView(content: emoji)
                }
            }
        }
        .padding()
        .foregroundColor(.red)
    }
}


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









struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)

        ContentView()
            .preferredColorScheme(.dark)
    }
}
