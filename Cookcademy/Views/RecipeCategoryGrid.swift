//
//  RecipeCategoryGrid.swift
//  Cookcademy
//
//  Created by Fred Tsui on 3/8/24.
//

import SwiftUI

struct RecipeCategoryGrid: View {
    
    private var recipeData = RecipeData()
    
    var body: some View {
        NavigationView {
            ScrollView{
                let columns = [GridItem(),GridItem()]
                LazyVGrid(columns: columns, content: {
                    ForEach(Category.allCases, id: \.self) { category in
                        CategoryView(category: category)
                    }
                    
                })
                .navigationTitle("Categories")
            }
        }
    }
}

struct CategoryView: View {
    let category: Category
    
    var body: some View {
        ZStack {
            Image(category.rawValue)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .opacity(0.15)
            Text(category.rawValue)
                .font(.title)
                .foregroundColor(.blue)
        }
    }
}

struct RecipeCategoryGrid_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCategoryGrid()
    }
}
