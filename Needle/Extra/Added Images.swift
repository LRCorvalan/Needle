//
//  Added Images.swift
//  Needle
//
//  Created by Luis Corvalan on 1/2/22.
//

import SwiftUI

extension Image {
    static let upArrow = Image(systemName: "arrowtriangle.up.fill")
    static let rightArrow = Image(systemName: "arrowtriangle.right.fill")
    static let bottomArrow = Image(systemName: "arrowtriangle.down.fill")
    static let leftArrow = Image(systemName: "arrowtriangle.left.fill")
}

struct ArrowImage: View {
    enum Direction {
        case up, right, bottom, left
    }
    
    var direction: Direction
    
    var directionImage: Image {
        switch direction {
        case .up: return Image.upArrow
        case .right: return Image.rightArrow
        case .bottom: return Image.bottomArrow
        case .left: return Image.leftArrow
        }
    }
    
    var body: some View {
        directionImage
            .resizable()
            .scaledToFit()
    }
}
