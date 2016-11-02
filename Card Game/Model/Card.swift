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
    internal var backImage : UIImage
    internal var isFaceUp : Bool
    
    
    init()
    {
        backImage = UIImage(named : "cardBack")!
        isFaceUp = false
    }
    
    func toString() -> String
    {
        let description = "The card is \(isFaceUp) "
        return description
    }
    
    
    func getBackImage() -> UIImage
    {
        return backImage
    }
    func setBackImage(newImage : UIImage)
    {
        self.backImage = newImage
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
