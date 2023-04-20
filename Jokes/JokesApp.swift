//
//  JokesApp.swift
//  Jokes
//
//  Created by Jack Dellamea on 4/17/23.
//

import SwiftUI

@main
struct JokesApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                JokeView()
                    .tabItem {
                        Label("Fresh", systemImage: "carrot")
                    }
                
                FavoritesView()
                    .tabItem {
                        Label("Favorites", systemImage: "face.smiling")
                    }
            }
            // Make the database available to all child views through the environment
            .environment(\.blackbirdDatabase, AppDatabase.instance)
        }
    }
}

