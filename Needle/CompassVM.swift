//
//  CompassVM.swift
//  Needle
//
//  Created by Luis Corvalan on 1/2/22.
//

import SwiftUI

class CompassVM: ObservableObject {
    @Published private(set) var compassModel = CompassModel()
    
    typealias Direction = CompassModel.Direction
    
    func selectDirection(position: Int) {
        compassModel.selectDirection(arrows[position])
    }
    
    var score: Int {
        return compassModel.score
    }
    
    var arrows: [Direction] {
        compassModel.arrows
    }
}
