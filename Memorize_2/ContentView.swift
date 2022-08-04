//
//  ContentView.swift
//  Memorize_2
//
//  Created by Sergey Lukaschuk on 02.08.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView()
            CardView(isFaceUp: true)
            CardView(isFaceUp: true)
            CardView()
        }
        .padding()
        .foregroundColor(.red)
    }
}


struct CardView: View {

    @State var isFaceUp: Bool = false

    let cats = ["🐈", "🐈‍⬛"]

    var body: some View {

        let shape = RoundedRectangle(cornerRadius: 20)

        ZStack() {
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 3)
                Text(cats.randomElement() ?? "")
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
