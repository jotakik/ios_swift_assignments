//
//  MemoryGame.swift
//  Homework13_Joshua_Tan
//
//  Created by Joshua Tan on 2025/11/8.
//

import Foundation

struct MemoryGame {
    private(set) var cards: [Card]
    private(set) var progress: Double = 0
    
    private var matchCount: Int = 0
    private var unmatchedOpenedCard1Idx: Int = -1
    private var unmatchedOpenedCard2Idx: Int = -1
    private var idToIdx: [UUID: Int]
    
    struct Card: Identifiable {
        let id: UUID = UUID()
        let content: String
        var isFaceUp: Bool = false
        var isMatched: Bool = false
    }
    
    init (contents: [String]) {
        cards = []
        for c in contents {
            cards.append(Card(content: c))
            cards.append(Card(content: c))
        }
        cards.shuffle()
        
        idToIdx = [:]
        for (idx, card) in cards.enumerated() {
            idToIdx[card.id] = idx
        }
    }
    
    private func getIdx(_ card: Card) -> Int {
        return idToIdx[card.id] ?? -1
    }
    
    private mutating func updateProgress() {
        progress = Double(matchCount) / Double(cards.count)
    }
    
    mutating func selectCard(card: Card) -> Bool {
        let newCardIdx = getIdx(card)
        if newCardIdx == -1 {
            return false
        }

        if cards[newCardIdx].isMatched {
            return false
        }
        
        //  Flip the 2 opened but not matching cards back to face down if they exist
        if unmatchedOpenedCard1Idx != -1 && unmatchedOpenedCard2Idx != -1 {
            cards[unmatchedOpenedCard1Idx].isFaceUp = false
            cards[unmatchedOpenedCard2Idx].isFaceUp = false
            unmatchedOpenedCard1Idx = -1
            unmatchedOpenedCard2Idx = -1
        }

        cards[newCardIdx].isFaceUp = true

        if unmatchedOpenedCard1Idx == -1 {  //  If this is the only unmatched face up card
            unmatchedOpenedCard1Idx = newCardIdx
        }
        else {  //  If this is the second face up card, check if it is a match
            if cards[unmatchedOpenedCard1Idx].content == cards[newCardIdx].content {    // cards match
                cards[unmatchedOpenedCard1Idx].isMatched = true
                cards[newCardIdx].isMatched = true
                
                matchCount += 2
                updateProgress()
                
                unmatchedOpenedCard1Idx = -1
            }
            else {  // cards do not match
                unmatchedOpenedCard2Idx = newCardIdx
            }
        }
        return true
    }
}
