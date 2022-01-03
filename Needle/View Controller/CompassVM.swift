//
//  CompassVM.swift
//  Needle
//
//  Created by Luis Corvalan on 1/2/22.
//

import SwiftUI

class CompassVM: ObservableObject {
    typealias Direction = CompassModel.Direction
    typealias Needle = CompassModel.Needle
    
    @Published private(set) var compassModel = CompassModel()
    
    var score: Int {
        return compassModel.score
    }
    
    var directionOrder: [Needle] {
        return compassModel.needles
    }
    
    func swipeDirection(_ direction: Direction) {
        compassModel.swipeDirection(direction)
    }
}
