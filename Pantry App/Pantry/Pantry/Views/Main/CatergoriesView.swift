//
//  CatergoriesView.swift
//  Pantry
//
//  Created by Emily Fulford on 2023/11/05.
//

import SwiftUI

//Filter categories

struct CategoriesView: View {
    var body: some View {
        NavigationView{
            List{
                ForEach(Category.allCases){ category in
                    NavigationLink{
                        ScrollView{
                            RecipeList(recipes: Recipe.all.filter{ $0.category == category.rawValue})
                        }
                        
                    }label: {
                        Text(category.rawValue + "s")
                    }
                }
                .navigationTitle("Categories")
            }
            .navigationViewStyle(.stack)
        }
    }
}
    
    struct CatergoriesView_Previews: PreviewProvider {
        static var previews: some View{
            CategoriesView()
        }
    }

