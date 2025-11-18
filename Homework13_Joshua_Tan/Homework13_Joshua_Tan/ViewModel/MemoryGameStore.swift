//
//  MemoryGameStore.swift
//  Homework13_Joshua_Tan
//
//  Created by Joshua Tan on 2025/11/8.
//

import Foundation
import SwiftUI
import Observation

@Observable
class MemoryGameStore {
    private let contents: [String]
    private var model: MemoryGame
    
    init () {
        contents = Array(ContentData.flagEmojis.keys)
        model = MemoryGame(contents: contents)
    }
    
    var cards: [MemoryGame.Card] {
        model.cards
    }
    
    var progress: Double {
        model.progress
    }
    
    func selectCard(card: MemoryGame.Card) {
        model.selectCard(card: card)
    }
}
