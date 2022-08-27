//
//  AspectVGrid.swift
//  Memorize_2
//
//  Created by Sergey Lukaschuk on 27.08.2022.
//

import SwiftUI

struct AspectVGrid<Item, ItemView>: View where ItemView: View, Item: Identifiable {

    var items: [Item]
    var aspectRatio: CGFloat
    var content: (Item) -> ItemView

    var body: some View {
        ScrollView {
            let width: CGFloat = 70
            LazyVGrid(columns: [GridItem(.adaptive(minimum: width))]) {
                ForEach(items) { item in
                    content(item).aspectRatio(aspectRatio, contentMode: .fill)
                }
            }
        }
    }
}

