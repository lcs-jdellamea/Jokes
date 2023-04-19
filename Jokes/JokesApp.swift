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
            JokeView()
                // Make the database availible to all child views through the environment
                .environment(\.blackbirdDatabase, AppDatabase.instance)
        }
    }
}

