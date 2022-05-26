//
//  DriveImage.swift
//  Needle
//
//  Created by Luis Corvalan on 4/27/22.
//

import SwiftUI

struct DriveImage: View {
    @ObservedObject var compassVM: CompassVM
    @State private var isSpinning = false
    @State private var isShining = false
    
    let length = UIScreen.main.bounds.width - 150
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .frame(width: length, height: length)
            .overlay(Text("Swipe North").foregroundColor(.white)).font(.largeTitle)
            .onTapGesture {
                withAnimation(Animation.linear) {
                    isSpinning.toggle()
                    isShining.toggle()
                }
            }
            .foregroundColor(isSpinning ? .red : .blue)
            .rotationEffect(Angle(degrees: isSpinning ? 270 : 0))
            .padding()
    }
    
    func rotate() -> CGFloat {
        switch compassVM.directions {
            
        }
        
        return 1
    }
}

struct DriveImage_Previews: PreviewProvider {
    static var previews: some View {
        DriveImage(compassVM: CompassVM())
    }
}
