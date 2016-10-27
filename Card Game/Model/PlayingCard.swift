//
//  PlayingCard.swift
//  Card Game
//
//  Created by Powley, Matthew on 10/25/16.
//  Copyright © 2016 Powley, Matthew. All rights reserved.
//

import UIKit

class PlayingCard : Card
{
    private var rank : Int
    {
        get
        {
            return self.rank
        }
        set(rank)
        {
            self.rank = rank
        }
    }
    private var suit : String
    {
        get
        {
            return self.suit
        }
        set(suit)
        {
            self.suit = suit
        }
    }
    
    
    
    func getRank() -> Int
    {
        return self.rank
    }
    func setRank(rank : Int)
    {
        self.rank = rank
    }
    
    
    
    
    
    
    
}
