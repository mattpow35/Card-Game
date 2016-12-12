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
    
    @IBOutlet weak var reShuffleLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var gameLabel: UILabel!
    @IBOutlet weak var startGame: UIButton!
    @IBOutlet weak var card1Label: UILabel!
    @IBOutlet weak var card2Label: UILabel!
    
    
    
    //inits
    init ()
    {
        deck = PlayingCardDeck()
        currentCard1 = PlayingCard()
        currentCard2 = PlayingCard()
        currentHand = [PlayingCard]()
        discardDeck = [PlayingCard]()
        
        score = Int()
        reShuffleLabel = UILabel()
        scoreLabel = UILabel()
    }
    
    @IBAction func startGame(_ sender: Any)
    {
        beginGame()
        
    }
 
    
    //methods
    func beginGame() -> Void
    {
            scoreLabel.text = "Score: \(score)"
            deck.shuffleDeck()
            drawCards()
    }
    
    fileprivate func drawCards() -> Void
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
            gameLabel.text = "You have finished the game with a score of \(score). To play again press the re-shuffle button."
            reShuffle()
        }
        
        scoreLabel.text = "Score: \(score)"
        
    }
    
    //method used when there is a match
    //draws 2 new cards and adds the match card to the discard pile
    func gotMatch() -> Void
    {
        discardDeck.append(currentCard1)
        discardDeck.append(currentCard2)
        currentHand.remove(at: 0)
        currentHand.remove(at: 0)
        drawCards()
    }
    
    //method used when there is no match
    //draws one new card and adds one to discard pile
    func noMatch() -> Void
    {
        discardDeck.append(currentHand[1])
        currentHand.remove(at: 1)
        currentCard2 = (deck.drawRandomCard() as? PlayingCard)!
        currentHand.insert(currentCard2, at: 1)
        
    }
    
    // takes the cards from the discard pile and adds them back to the deck
    func reShuffle() -> Void
    {
            reShuffleLabel.text = "You have ran out of cards. The game is over. re-shuffling deck now..."
        
            var tempDeck = [PlayingCard]()
            while discardDeck.count > 0
            {
                let removeCard = discardDeck.remove(at: 0)
            
                tempDeck.append(removeCard)
            
            }
            
            deck.cards = tempDeck
            deck.shuffleDeck()
        
            score = 0
    }
}
