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
            CardView()
            CardView()
            CardView()
        }
        .padding()
        .foregroundColor(.red)
    }
}


struct CardView: View {
    var body: some View {
        ZStack() {
            RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 3)
            Text("Hello, world!")
                .foregroundColor(.black)
                .padding()
                .border(.black)
                .background(Color.red.opacity(0.3))
        }
    }
}















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
