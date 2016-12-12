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
        //creates a temporary array to hold card objects
        var tempDeck = [Card]()
        //repeat until cards deck no longer has any cards
        while self.cards.count > 0
        {
            //get a random #
            //chooses a valid random index in the range of 0 ... cards.count-1
            let randomSpot = Int (arc4random() % UInt32(cards.count))
            //get that card from cards
            //takes the card from that spot from the deck, The deck decreases in count
            let removeCard = self.cards.remove(at: randomSpot)
            //put that card in temp
            //add the removed card to the end of the temporary deck.
            tempDeck.append(removeCard)
        
        }
        //replace the original deck with the temp deck that was shuffled.
        self.cards = tempDeck
    }
    
    func cutDeck() -> Void
    {
        
    }
    
    func drawCard() -> Card?
    {
        if self.cards.count > 0
        {
            return cards.remove(at: 0)
        }
        else
        {
            return nil
        }
    }

    func drawRandomCard() -> Card?
    {
        if cards.count > 0
        {
            let randomIndex = (Int)(arc4random() % (UInt32) (cards.count))
            return cards.remove(at: randomIndex)
        }
        else
        {
            return nil
        }
    }

}
