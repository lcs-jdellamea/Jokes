//
//  Joke.swift
//  Jokes
//
//  Created by Jack Dellamea on 4/17/23.
//

import Foundation

struct Joke: Identifiable {
    let type: String
    let setup: String
    let punchline: String
    let id: Int
}

let exampleJoke = Joke(type: "general", setup: "How much doeas a hipster weigh?", punchline: "An instagram.", id: 146)
