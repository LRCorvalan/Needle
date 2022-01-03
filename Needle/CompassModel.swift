//
//  CompassModel.swift
//  Needle
//
//  Created by Luis Corvalan on 1/2/22.
//

import Foundation

struct CompassModel {
    private(set) var arrows: [Direction] = [
        Direction.north,
        Direction.east,
        Direction.south,
        Direction.west
    ]
    
    private(set) var directionRule: Direction = .north
    private(set) var score = 0
    
    init() {
        randomDirectionRule()
    }
}

// MARK: - Direction Rule
extension CompassModel {
    private mutating func randomDirectionRule() {
        let randomDirectionCount = Int.random(in: arrows.indices)
        var newDirection: Direction = .north
        
        switch randomDirectionCount {
        case 0: newDirection = .north
        case 1: newDirection = .east
        case 2: newDirection = .south
        case 3: newDirection = .west
        default: newDirection = .north
        }
        
        if directionRule == newDirection {
            randomDirectionRule()
        } else {
            directionRule = newDirection
        }
    }
}

// MARK: - Swipe Action
extension CompassModel {
    mutating func selectDirection(_ direction: Direction) {
        if direction == directionRule {
            score += 1
            
            switch direction {
            case .north:
                arrows.removeAll()
                arrows.append(.north)
                arrows.append(.east)
                arrows.append(.south)
                arrows.append(.west)
            case .east:
                arrows.removeAll()
                arrows.append(.east)
                arrows.append(.south)
                arrows.append(.west)
                arrows.append(.north)
            case .south:
                arrows.removeAll()
                arrows.append(.south)
                arrows.append(.west)
                arrows.append(.north)
                arrows.append(.east)
            case .west:
                arrows.removeAll()
                arrows.append(.west)
                arrows.append(.north)
                arrows.append(.east)
                arrows.append(.south)
            }
            
            randomDirectionRule()
        } else {
            score = 0
        }
    }
}

// MARK: - Direction
extension CompassModel {
    enum Direction: String {
        case north, east, south, west
    }
}
