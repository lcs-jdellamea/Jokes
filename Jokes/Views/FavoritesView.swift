//
//  FavoritesView.swift
//  Jokes
//
//  Created by Jack Dellamea on 4/19/23.
//

import Blackbird
import SwiftUI

struct FavoritesView: View {
   
    // MARK: Stored properties
    
    // The list of favorite jokes
    @BlackbirdLiveModels({ db in
        try await Joke.read(from: db)
    }) var favoriteJokes
    
    // MARK: Computed properties
    var body: some View {
        List(favoriteJokes.results) { currentJoke in
            VStack(alignment: .leading) {
                Text(currentJoke.setup)
                    .bold()
                Text(currentJoke.punchline)
            }
            
        }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
            // Make the database available to this view in Xcode Previews
            .environment(\.blackbirdDatabase, AppDatabase.instance)
    }
}
