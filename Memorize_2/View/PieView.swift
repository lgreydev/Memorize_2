//
//  PieView.swift
//  Memorize_2
//
//  Created by Sergey Lukaschuk on 02.09.2022.
//

import SwiftUI


struct PieView: Shape {
    var starAngel: Angle
    var endAngle: Angle
    var clockwise = false

    func path(in rect: CGRect) -> Path {
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radius = min(rect.width, rect.height) / 2

        let start = CGPoint(
            x: center.x + radius * CGFloat(cos(starAngel.radians)),
            y: center.y + radius * CGFloat(sin(starAngel.radians))
        )


        var p = Path()
        p.move(to: center)
        p.addLine(to: start)
        p.addArc(
            center: center,
            radius: radius,
            startAngle: starAngel,
            endAngle: endAngle,
            clockwise: !clockwise)
        p.addLine(to: center)


        return p
    }

}
