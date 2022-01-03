//
//  CompassVM.swift
//  Needle
//
//  Created by Luis Corvalan on 1/2/22.
//

import SwiftUI

class CompassVM: ObservableObject {
    @Published private(set) var compassModel = CompassModel()
}

// MARK: - Functions
extension CompassVM {
    func selectDirection(position: Int) {
        compassModel.selectDirection(arrows[position])
    }
}

// MARK: - Properties
extension CompassVM {
    typealias Direction = CompassModel.Direction
    
    var score: Int {
        return compassModel.score
    }
    
    var arrows: [Direction] {
        compassModel.arrows
    }
}
