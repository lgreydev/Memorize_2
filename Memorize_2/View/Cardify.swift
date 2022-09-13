//
//  Cardify.swift
//  Memorize_2
//
//  Created by Sergey Lukaschuk on 12.09.2022.
//

import SwiftUI

struct Cardify: ViewModifier {

    var isFaceUp: Bool

    func body(content: Content) -> some View {
        ZStack() {
            let shape = RoundedRectangle(cornerRadius: Constants.cornerRadius)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: Constants.lineWidth)
                content
            } else {
                shape.fill()
            }
        }
    }

    private struct Constants {
        static let cornerRadius: CGFloat = 10
        static let lineWidth: CGFloat = 3
    }
}

extension View {
    func cardify(isFaceUp: Bool) -> some View {
        self.modifier(Cardify(isFaceUp: isFaceUp))
    }
}
