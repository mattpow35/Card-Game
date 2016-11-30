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
    internal var deck : PlayingCardDeck
    internal var currentCard1 : PlayingCard
    internal var currentCard2 : PlayingCard
    internal var currentHand : [PlayingCard]
    internal var discardDeck : [PlayingCard]
    internal var pointDeck : [PlayingCard]
    internal var score : Int
    
    
    
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
        deck.shuffleDeck()
        
        currentCard1 = (deck.drawRandomCard() as? PlayingCard)!
        currentCard2 = (deck.drawRandomCard() as? PlayingCard)!
        
        currentHand.append(currentCard1)
        currentHand.append(currentCard2)
        
        
    }
    
    func checkMatch(String : [PlayingCard]) -> Bool
    {
        let hasMatch :Bool
        
        if ( currentHand[0].rank == currentHand[1].rank || currentHand[0].suit == currentHand[1].suit)
        {
            hasMatch = true
        }
        else
        {
            hasMatch = false
        }
        
        
        return hasMatch
    }
}