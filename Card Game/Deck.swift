//
//  Deck.swift
//  Card Game
//
//  Created by Powley, Matthew on 10/31/16.
//  Copyright © 2016 Powley, Matthew. All rights reserved.
//

import Foundation

class Deck
{
    lazy var cards = [Card]()
    
    func shuffleDeck() -> Void
    {
        var tempDeck = [Card]()
        while self.cards.count > 0
        {
            //get a random #
            //chooses a valid random index in the range of 0 ... cards.count-1
            let randomSpot = Int (arc4random() % UInt32(cards.count))
            //get that card from cards
            //takes the card from that spot from the deck, The deck decreases in count
            let removeCard = cards.removeAtIndex(randomSpot)
            //put that card in temp
            //add the removed card to the end of the temporary deck.
            tempDeck.append(removeCard)
        
        }
        //replace the original deck with the temp deck that was shuffled.
        cards = tempDeck
    }
    
    func cutDeck() -> Void
    {
        
    }
    
    func drawCard() -> Card!
    {
        if cards.count > 0
        {
            return cards.removeAtIndex(0)
        }
        else
        {
            return nil
        }
    }

//    func drawRandomCard() -> Card!
//    {
//        
//    }

}
