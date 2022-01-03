//
//  Arrow.swift
//  Needle
//
//  Created by Luis Corvalan on 1/2/22.
//

import SwiftUI

struct Arrow: View {
    @ObservedObject var compassVM = CompassVM()
    let index: Int
    
    var body: some View {
        Rectangle()
            .frame(width: 50, height: 50)
            .foregroundColor(.red)
            .onTapGesture {
                compassVM.selectDirection(position: index)
            }
            .overlay(Text(compassVM.arrows[index].rawValue))
    }
}

struct Arrow_Previews: PreviewProvider {
    static var previews: some View {
        Arrow(compassVM: CompassVM(), index: 1)
    }
}
