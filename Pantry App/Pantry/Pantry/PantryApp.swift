//
//  PantryApp.swift
//  Pantry
//
//  Created by Emily Fulford on 2023/11/05.
//

import SwiftUI

@main
struct PantryApp: App {
    @StateObject var recipesViewModel = RecipesViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipesViewModel)
            //SplashScreenView()
            
            
        }
    }
}
