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
                .onTapGesture {
                    compassVM.swipeDirection(.north)
                }
            
            HStack {
                Rectangle()
                    .frame(width: 50, height: 50)
                    .onTapGesture {
                        compassVM.swipeDirection(.west)
                    }
                
                Rectangle()
                    .frame(width: 50, height: 50)
                    .onTapGesture {
                        compassVM.swipeDirection(.east)
                    }
            }
            
            Rectangle()
                .frame(width: 50, height: 50)
                .onTapGesture {
                    compassVM.swipeDirection(.south)
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
