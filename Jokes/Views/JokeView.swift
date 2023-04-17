//
//  JokeView.swift
//  Jokes
//
//  Created by Jack Dellamea on 4/17/23.
//

import SwiftUI

struct JokeView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("You see, mountains aern't just funny.")
                    .font(.title)
                    .multilineTextAlignment(.center)
            }
            .navigationTitle("Random Jokes")
        }
    }
}

struct JokeView_Previews: PreviewProvider {
    static var previews: some View {
        JokeView()
    }
}
