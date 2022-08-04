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
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 3)
                Text("Hello, world!!!")
                    .padding([.top, .bottom], 20)
                    .border(.green)
            }

            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 3)
                Text("Hello, world!!!")
                    .padding([.top, .bottom], 20)
                    .border(.green)
            }

            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 3)
                Text("Hello, world!!!")
                    .padding([.top, .bottom], 20)
                    .border(.green)
            }


            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 3)
                Text("Hello, world!!!")
                    .padding([.top, .bottom], 20)
                    .border(.green)
            }
        }
        .padding([.top, .bottom], 150)
        .foregroundColor(.red)
    }
}


















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
