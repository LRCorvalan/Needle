//
//  ScoreView.swift
//  Needle
//
//  Created by Luis Corvalan on 2/3/22.
//

import SwiftUI

struct ScoreView: View {
    let score: Int
    
    var body: some View {
        Text(String(score))
            .font(.title)
            .bold()
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(score: 4)
    }
}
