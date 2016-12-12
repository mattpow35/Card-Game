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
    
    fileprivate lazy var cardGame = StupidGame()
    fileprivate lazy var currentDeck = PlayingCardDeck()
    
    fileprivate lazy var clickCount = Int()
    
    override func viewDidLoad()
    {
        
    }
    
    @IBAction func flipCard(_ sender: UIButton)
    {
        clickCount += 1
        let words = "The random card has been clicked \(clickCount) times"
        cardLabel.text = words
        
        if let currentCard = currentDeck.drawRandomCard() as? PlayingCard
        {
            cardButton.setTitle("\(currentCard.getCardData())", for: UIControlState())
        }
        else
        {
            cardLabel.text = "The deck was exhausted - renitializing"
            currentDeck = PlayingCardDeck()
        }
        
    }
}
