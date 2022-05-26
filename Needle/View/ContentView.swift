//
//  ContentView.swift
//  Needle
//
//  Created by Luis Corvalan on 1/2/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var compassVM: CompassVM
    
    var body: some View {
        if compassVM.compass.endGame {
            LostView(compassVM: compassVM)
        } else {
            ZStack(alignment: .top) {
                DriveImage(compassVM: compassVM)
                
                Text(String(compassVM.score))
                    .font(.title)
                    .bold()
                    .padding(.top)
            }
            .gesture(DirectionGesture(compassVM: compassVM))
            .ignoresSafeArea(.all, edges: .bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(compassVM: CompassVM())
    }
}
