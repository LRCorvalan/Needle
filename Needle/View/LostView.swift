//
//  LostView.swift
//  Needle
//
//  Created by Luis Corvalan on 2/3/22.
//

import SwiftUI

struct LostView: View {
    @ObservedObject var compassVM = CompassVM()
    
    var body: some View {
        VStack {
            Text("Game Over")
                .font(.largeTitle)
                .bold()
            
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(.brown)
                
                VStack {
                    HStack {
                        Text("Score")
                            .bold()
                        Spacer()
                        Text(String(compassVM.score))
                            .bold()
                    }
                    
                    HStack {
                        Text("Best")
                            .bold()
                        Spacer()
                        Text(String(compassVM.getHighScore()))
                            .bold()
                    }
                }
                .padding()
            }
            .frame(width: 300, height: 100)
            .padding()
            
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(.brown)
                Image(systemName: "play.fill")
                    .resizable()
                    .scaledToFit()
                    .padding()
            }
            .frame(width: 300, height: 100)
            .onTapGesture {
                compassVM.startGame()
            }
        }
    }
}

struct LostView_Previews: PreviewProvider {
    static var previews: some View {
        LostView()
    }
}
