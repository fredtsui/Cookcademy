//
//  RecipesListView.swift
//  Cookcademy
//
//  Created by Fred Tsui on 3/6/24.
//

import SwiftUI
import SwiftData

struct RecipesListView: View {
    @StateObject var recipeData = RecipeData()
    private let listBackgroundColor = AppColor.background
    private let listTextColor = AppColor.foreground
    
    var body: some View {
        List {
            ForEach(recipeData.recipes) { recipe in
                Text(recipe.mainInformation.name)
            }
            .listRowBackground(listBackgroundColor)
            .foregroundColor(listTextColor)
        }
        .navigationTitle(navigationTitle)
    }
}

extension RecipesListView {
    var recipes: [Recipe] {
        recipeData.recipes
    }
    
    var navigationTitle: String {
        "All Recipes"
    }
}



struct RecipesListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            RecipesListView()
        }
    }
}
