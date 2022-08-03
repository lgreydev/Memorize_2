//
//  ContentView.swift
//  Memorize_2
//
//  Created by Sergey Lukaschuk on 02.08.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 3)

            Text("Hello, world!!!")
                .padding([.top, .bottom], 20)
                .border(.green)
        }
        .padding()
        .foregroundColor(.red)

    }
}


















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
