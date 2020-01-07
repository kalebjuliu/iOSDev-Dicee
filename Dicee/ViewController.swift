//
//  ViewController.swift
//  Dicee
//
//  Created by Archangel on 27/12/19.
//  Copyright © 2019 Kaleb Juliu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let diceImages = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    var result: Int = 0
    
    var randomIndex1: Int = 0
    var randomIndex2: Int = 0
    var randomIndex3: Int = 0
    var randomIndex4: Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceImageView3: UIImageView!
    @IBOutlet weak var diceImageView4: UIImageView!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        randomIndex1 = Int.random(in: 0 ... 5)
        randomIndex2 = Int.random(in: 0 ... 5)
        randomIndex3 = Int.random(in: 0 ... 5)
        randomIndex4 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: diceImages[randomIndex1])
        
        diceImageView2.image = UIImage(named: diceImages[randomIndex2])
        
        diceImageView3.image = UIImage(named: diceImages[randomIndex3])
        
        diceImageView4.image = UIImage(named: diceImages[randomIndex4])
        
        result = (randomIndex1 + 1) + (randomIndex2 + 1) + (randomIndex3 + 1) + (randomIndex4 + 1)
        resultLabel.text = String(result)
        print(result)
        
    }


}

