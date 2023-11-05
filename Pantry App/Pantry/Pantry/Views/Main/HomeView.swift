//
//  HomeView.swift
//  Pantry
//
//  Created by Emily Fulford on 2023/11/05.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var recipesVM: RecipesViewModel
    
    var body: some View {
        ZStack {
            Color(.orange)
            NavigationView{
                ScrollView {
                    RecipeList(recipes: recipesVM.recipes)
                }
                .navigationTitle("My Recipes")
            }
            .navigationViewStyle(.stack)
        }
    }
    }
    

struct Homeview_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(RecipesViewModel())
    }
}
