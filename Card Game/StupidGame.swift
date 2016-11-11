//
//  StupidGame.swift
//  Card Game
//
//  Created by Powley, Matthew on 11/11/16.
//  Copyright © 2016 Powley, Matthew. All rights reserved.
//

import Foundation

class StupidGame
{
    //declaration section
    private var deck : PlayingCardDeck
    private var currentCard1 : PlayingCard
    private var currentCard2 : PlayingCard
    private var currentHand : [PlayingCard]
    private var discardDeck : [PlayingCard]
    private var pointDeck : [PlayingCard]
    private var score : Int
    
    
    
    //inits
    init ()
    {
        deck = PlayingCardDeck()
        currentCard1 = PlayingCard()
        currentCard2 = PlayingCard()
        currentHand = [PlayingCard]()
        discardDeck = [PlayingCard]()
        pointDeck = [PlayingCard]()
        score = Int()

        
    }
    
    
    
    //methods
    func startGame() -> Void
    {
        currentCard1 = deck.drawRandomCard()!
        
        
        
    }
}