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


    private func widthThatFits(itemCount: Int, in size: CGSize, itemAspectRatio: CGFloat) -> CGFloat {
        var columnCount = 1
        var rowCount = itemCount

        repeat {
            let itemWidht = size.width / CGFloat(columnCount)
            let itemHeight = itemWidht / itemAspectRatio
            if CGFloat(rowCount) * itemHeight < size.height {
                break
            }
            columnCount += 1
            rowCount = (itemCount + (columnCount - 1)) / columnCount
        } while columnCount < itemCount

        if columnCount > itemCount {
            columnCount = itemCount
        }

        return floor(size.width / CGFloat(columnCount))
    }
}

