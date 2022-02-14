//
//  DirectionGesture.swift
//  Needle
//
//  Created by Luis Corvalan on 2/4/22.
//

import SwiftUI

struct DirectionGesture: Gesture {
    @State private var startPos : CGPoint = .zero
    @State private var isSwiping = true
    @ObservedObject var compassVM = CompassVM()
    
    var body: some Gesture {
        DragGesture()
            .onChanged { gesture in
                if self.isSwiping {
                    self.startPos = gesture.location
                    self.isSwiping.toggle()
                }
            }
            .onEnded { gesture in
                let xDist = abs(gesture.location.x - self.startPos.x)
                let yDist = abs(gesture.location.y - self.startPos.y)
                
                if (self.startPos.y > gesture.location.y) && (yDist > xDist) {
                    compassVM.selectScreenPosition(.top)
                } else if (self.startPos.x < gesture.location.x) && (yDist < xDist) {
                    compassVM.selectScreenPosition(.right)
                } else if (self.startPos.y <  gesture.location.y) && (yDist > xDist) {
                    compassVM.selectScreenPosition(.bottom)
                } else if (self.startPos.x > gesture.location.x) && (yDist < xDist) {
                    compassVM.selectScreenPosition(.left)
                }
                
                self.isSwiping.toggle()
            }
    }
}
