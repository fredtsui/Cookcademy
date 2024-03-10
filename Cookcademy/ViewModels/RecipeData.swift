//
//  RecipeData.swift
//  Cookcademy
//
//  Created by Fred Tsui on 3/7/24.
//

import Foundation

class RecipeData: ObservableObject {
    @Published var recipes = Recipe.testRecipes
    
//    func recipes(for category: Category) -> [Recipe] {
//        var filteredRecipes = [Recipe]()
//        for recipe in recipe {
//            if recipe.mainInformation.category == category {
//                filteredRecipes.append(recipe)
//            }
//        }
//    }
}
