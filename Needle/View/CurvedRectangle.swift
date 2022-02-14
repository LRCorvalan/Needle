//
//  CurvedRectangle.swift
//  Needle
//
//  Created by Luis Corvalan on 2/8/22.
//

import SwiftUI

struct CurvedRectangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint.zero)
        
        path.addQuadCurve(to: CGPoint(x: 80, y: rect.maxY),
                          control: CGPoint(x: rect.midX, y: rect.midY))
        
        path.addLine(to: CGPoint(x: rect.maxX + 80, y: rect.maxY))
        
        path.addQuadCurve(to: CGPoint(x: rect.maxX, y: 0),
                          control: CGPoint(x: rect.midX + 100, y: rect.midY))
        
        path.closeSubpath()
        
        return path
    }
}

struct CurvedRectangle_Previews: PreviewProvider {
    static var previews: some View {
        CurvedRectangle()
            .frame(width: 100, height: 400)
    }
}
