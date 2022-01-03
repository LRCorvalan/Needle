//
//  ContentView.swift
//  Needle
//
//  Created by Luis Corvalan on 1/2/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var compassVM = CompassVM()
    
    var body: some View {
        VStack {
            Text(compassVM.compassModel.directionRule.rawValue)
            Text("Score = \(compassVM.score)")
            
            Rectangle()
                .frame(width: 50, height: 50)
                .foregroundColor(.red)
                .onTapGesture {
                    compassVM.selectDirection(position: 0)
                }
                .overlay(Text(compassVM.arrows[0].rawValue))
            
            HStack {
                Arrow(compassVM: compassVM, index: 3)
                
                Arrow(compassVM: compassVM, index: 1)
            }
            
            Arrow(compassVM: compassVM, index: 2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
