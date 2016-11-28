//
//  Card.swift
//  Card Game
//
//  Created by Powley, Matthew on 10/25/16.
//  Copyright © 2016 Powley, Matthew. All rights reserved.
//

import UIKit

class Card
{
    
    internal var isFaceUp : Bool
    
    
    init()
    {
        
        isFaceUp = false
    }
    
    func toString() -> String
    {
        let description = "The card is \(isFaceUp) "
        return description
    }
    
    
    
  
    func isUp() -> Bool
    {
        return isFaceUp
    }
    func setIsUp(isUp : Bool)
    {
        self.isFaceUp = isUp
    }
    
}
