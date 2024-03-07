//
//  RecipeData.swift
//  Cookcademy
//
//  Created by Fred Tsui on 3/7/24.
//

import Foundation

class RecipeData: ObservableObject {
    @Published var recipes = Recipe.testRecipes
}
