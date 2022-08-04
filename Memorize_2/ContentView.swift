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

    var isFaceUp: Bool = false

    var body: some View {

        let shape = RoundedRectangle(cornerRadius: 20)

        ZStack() {
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 3)
            Text("🤠")
                .font(.largeTitle)
                .padding()
            } else {
                shape.fill()
            }
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
