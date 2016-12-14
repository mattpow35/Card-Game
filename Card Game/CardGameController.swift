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
    @IBOutlet weak var startButton: UIButton!
    
    
    override func viewDidLoad()
    {
        
    }
    
    @IBAction func startGame(_ sender: UIPress)
    {
        performSegue(withIdentifier: "StupidGame", sender: UIPress())
        
    }
    
  
}
