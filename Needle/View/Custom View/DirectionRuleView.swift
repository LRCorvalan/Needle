//
//  DirectionRuleView.swift
//  Needle
//
//  Created by Luis Corvalan on 2/3/22.
//

import SwiftUI

struct DirectionRuleView: View {
    let direction: String
    
    var body: some View {
        Text(direction)
            .font(.title)
            .bold()
    }
}

struct DirectionRuleView_Previews: PreviewProvider {
    static var previews: some View {
        DirectionRuleView(direction: "North")
    }
}
