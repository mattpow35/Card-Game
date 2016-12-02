//
//  CardGameController.swift
//  Card Game
//
//  Created by Powley, Matthew on 10/27/16.
//  Copyright © 2016 Powley, Matthew. All rights reserved.
//

import UIKit

class CardGameController : UIViewController
{
    
    @IBOutlet weak var cardButton: UIButton!
    @IBOutlet weak var cardLabel: UILabel!
    
    private lazy var cardGame = StupidGame()
    private lazy var currentDeck = PlayingCardDeck()
    
    private lazy var clickCount = Int()
    
    override func viewDidLoad()
    {
        
    }
    
    @IBAction func flipCard(sender: UIButton)
    {
        clickCount += 1
        let words = "The random card has been clicked \(clickCount) times"
        cardLabel.text = words
        
        if let currentCard = currentDeck.drawRandomCard() as? PlayingCard
        {
            cardButton.setTitle("\(currentCard.getCardData())", forState: UIControlState.Normal)
        }
        else
        {
            cardLabel.text = "The deck was exhausted - renitializing"
            currentDeck = PlayingCardDeck()
        }
        
    }
}
