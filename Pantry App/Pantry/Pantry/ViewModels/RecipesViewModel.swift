//
//  RecipesViewModel.swift
//  Pantry
//
//  Created by Emily Fulford on 2023/11/05.
//

import Foundation

class RecipesViewModel: ObservableObject {
    @Published private(set) var recipes: [Recipe] = []
    
    init() {
        recipes = Recipe.all
    }
    func addRecipe(recipe: Recipe){
        recipes.append(recipe)
    }
}
