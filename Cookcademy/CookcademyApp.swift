//
//  CookcademyApp.swift
//  Cookcademy
//
//  Created by Fred Tsui on 3/6/24.
//

import SwiftUI
import SwiftData

@main
struct CookcademyApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            RecipesListView()
        }
        .modelContainer(sharedModelContainer)
    }
}
