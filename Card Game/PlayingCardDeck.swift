//
//  PlayingCardDeck.swift
//  Card Game
//
//  Created by Powley, Matthew on 10/31/16.
//  Copyright © 2016 Powley, Matthew. All rights reserved.
//

import Foundation

class PlayingCardDeck : Deck
{
    lazy var cards = [PlayingCard]()
    
    override init()
    {
        var test = PlayingCard()
        test.suit = "ads"
    }
    
    func shuffleDeck() -> Void
    {
        
    }
    
    func orderDeck() -> Void
    {
        
    }
}