//
//  CompassModel.swift
//  Needle
//
//  Created by Luis Corvalan on 1/2/22.
//

import Foundation

struct CompassModel {
    private(set) var needles: [Needle] = [
        Needle(direction: .north),
        Needle(direction: .east),
        Needle(direction: .south),
        Needle(direction: .west)
    ]
    
    private(set) var directionRule: Direction = .north
    private(set) var score = 0
    
    init() {
        randomDirectionRule()
    }
}

// MARK: - Swipe Action
extension CompassModel {
    mutating func swipeDirection(_ direction: Direction) {
        if direction == directionRule {
            score += 1
            randomDirectionRule()
        } else {
            score = 0
        }
    }
}

// MARK: - Direction Rule
extension CompassModel {
    private mutating func randomDirectionRule() {
        let randomDirectionCount = Int.random(in: needles.indices)
        
        switch randomDirectionCount {
        case 0: directionRule = .north
        case 1: directionRule = .east
        case 2: directionRule = .south
        case 3: directionRule = .west
        default: directionRule = .north
        }
    }
}

// MARK: - Properties
extension CompassModel {
    enum Direction: String {
        case north, east, south, west
    }
    
    struct Needle {
        let direction: Direction
        
        var position: Int {
            switch direction {
            case .north: return 0
            case .east: return 1
            case .south: return 2
            case .west: return 3
            }
        }
    }
}
