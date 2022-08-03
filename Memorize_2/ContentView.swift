//
//  ContentView.swift
//  Memorize_2
//
//  Created by Sergey Lukaschuk on 02.08.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .stroke(lineWidth: 3)
            .padding()
            .foregroundColor(.red)


//        Text("Hello, world!!!")
//            .padding([.top, .bottom, .leading], 20)
//            .foregroundColor(.red)
//            .border(.green)
    }

}


















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
