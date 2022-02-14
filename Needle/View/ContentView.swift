//
//  ContentView.swift
//  Needle
//
//  Created by Luis Corvalan on 1/2/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var compassVM = CompassVM()
    
    private let carTop: Double = 180
    private let carLeft: Double = 90
    private let carRight: Double = -90
    private let carBottom: Double = 0
    
    var body: some View {
        if compassVM.compass.endGame {
            LostView(compassVM: compassVM)
        } else {
            ZStack(alignment: .top) {
                Image("road")
                    .resizable()
                    .scaledToFit()
                    .offset(x: 0, y: 60)
                
                VStack {
                    ScoreView(score: compassVM.score)
                        .padding()
                    
                    DirectionRuleView(direction: compassVM.rule)
                }
                .gesture(DirectionGesture(compassVM: compassVM))
            }
            .ignoresSafeArea()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
