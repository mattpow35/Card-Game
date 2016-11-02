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
    override func viewDidLoad()
    {
        let tempCard = Card()
        print(tempCard.toString())
        let otherTemp = PlayingCard()
        print(otherTemp.toString())
    }
    
}
