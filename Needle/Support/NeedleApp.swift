//
//  NeedleApp.swift
//  Needle
//
//  Created by Luis Corvalan on 1/2/22.
//

import SwiftUI

@main
struct NeedleApp: App {
    @StateObject var compassVM = CompassVM()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
