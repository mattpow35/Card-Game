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
    
    private lazy var currentDeck = PlayingCardDeck()
    
    override func viewDidLoad()
    {
        let tempCard = Card()
        print(tempCard.toString())
        let otherTemp = PlayingCard()
        print(otherTemp.toString())
    }
    
}
