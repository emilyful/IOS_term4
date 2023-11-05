//
//  FavouritesView.swift
//  Pantry
//
//  Created by Emily Fulford on 2023/11/05.
//

import SwiftUI

struct FavouritesView: View {
    var body: some View {
      
        NavigationView{
            ZStack{
                Theme.primary.ignoresSafeArea()
                Text("You haven't saved any favourites yet")
                    .padding()
                    .navigationTitle("Favourites")
            }
            
        }
        }

}


struct FavouritesView_Previews: PreviewProvider {
    static var previews: some View{
       FavouritesView()
    }
}

