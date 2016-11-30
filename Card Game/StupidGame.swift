//
//  StupidGame.swift
//  Card Game
//
//  Created by Powley, Matthew on 11/11/16.
//  Copyright © 2016 Powley, Matthew. All rights reserved.
//

import Foundation
import UIKit

class StupidGame
{
    //declaration section
    internal var deck : PlayingCardDeck
    internal var currentCard1 : PlayingCard
    internal var currentCard2 : PlayingCard
    internal var currentHand : [PlayingCard]
    internal var discardDeck : [PlayingCard]
  
    internal var score : Int
    internal var label : UILabel!
    
    
    
    //inits
    init ()
    {
        deck = PlayingCardDeck()
        currentCard1 = PlayingCard()
        currentCard2 = PlayingCard()
        currentHand = [PlayingCard]()
        discardDeck = [PlayingCard]()
        
        score = Int()
        label = UILabel()

        
    }
    
    
    
    //methods
    func startGame() -> Void
    {
        deck.shuffleDeck()
        drawCards()
    }
    
    private func drawCards() -> Void
    {
        currentCard1 = (deck.drawRandomCard() as? PlayingCard)!
        currentCard2 = (deck.drawRandomCard() as? PlayingCard)!
        
        currentHand.append(currentCard1)
        currentHand.append(currentCard2)
    }
    
    func checkMatch() -> Bool
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
    
    func playMatchGame() -> Void
    {
        if deck.cards.count > 1
        {
            if checkMatch()
            {
                score += 5
                gotMatch()
            }
            else
            {
                score -= 2
                noMatch()
            }
        }
        else
        {
            label.text = "You have ran out of cards, re-shuffling deck now..."
            
            
//            while discardDeck.count > 0
//            {
//                let 
//            }
            
            
            
        }
        
    }
    
    func gotMatch() -> Void
    {
        discardDeck.append(currentCard1)
        discardDeck.append(currentCard2)
        currentHand.removeAtIndex(0)
        currentHand.removeAtIndex(0)
        drawCards()
    }
    
    func noMatch() -> Void
    {
        discardDeck.append(currentHand[1])
        currentHand.removeAtIndex(1)
        currentCard2 = (deck.drawRandomCard() as? PlayingCard)!
        currentHand.insert(currentCard2, atIndex: 1)
        
    }
    
    
    
    
    
    
    
    
    
    
    
}