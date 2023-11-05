//
//  ContentView.swift
//  Pantry
//
//  Created by Emily Fulford on 2023/11/05.
//

import SwiftUI



struct ContentView: View {
    var body: some View {
        TabBar()
    }
}

//Onboarding


struct ContentView_Previews: PreviewProvider{
    static var previews: some View {
        ContentView()
            .environmentObject(RecipesViewModel())
    }
}
