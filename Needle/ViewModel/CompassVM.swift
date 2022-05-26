//
//  CompassVM.swift
//  Needle
//
//  Created by Luis Corvalan on 1/2/22.
//

import SwiftUI

class CompassVM: ObservableObject {
    typealias Direction = Compass.Direction
    
    @Published private(set) var compass = Compass()
    
    func selectScreenPosition(_ screenPosition: ScreenPosition) {
        switch screenPosition {
        case .top: compass.selectArrow(compass.directions[0])
        case .right: compass.selectArrow(compass.directions[1])
        case .bottom: compass.selectArrow(compass.directions[2])
        case .left: compass.selectArrow(compass.directions[3])
        }
    }
    
    func directionName(_ screenPosition: ScreenPosition) -> String {
        switch screenPosition {
        case .top: return directions[0].name
        case .right: return directions[1].name
        case .bottom: return directions[2].name
        case .left: return directions[3].name
        }
    }
    
    func getHighScore() -> Int {
        compass.updateHighScoreOnRealm()
    }
    
    func startGame() {
        compass.startGame()
    }
    
    var rule: Direction {
        compass.rule
    }
    
    var score: Int {
        compass.score
    }

    var directions: [Direction] {
        compass.directions
    }
    
    enum ScreenPosition {
        case top, right, bottom, left
    }
}
