//
//  Joke.swift
//  Jokes
//
//  Created by Jack Dellamea on 4/17/23.
//

import Blackbird
import Foundation

struct Joke: Identifiable, Codable, BlackbirdModel {
    @BlackbirdColumn var type: String
    @BlackbirdColumn var setup: String
    @BlackbirdColumn var punchline: String
    @BlackbirdColumn var id: Int
}

let exampleJoke = Joke(type: "general",
                       setup: "How much doeas a hipster weigh?",
                       punchline: "An instagram.",
                       id: 146)
