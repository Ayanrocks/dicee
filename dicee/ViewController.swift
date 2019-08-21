//
//  ViewController.swift
//  dicee
//
//  Created by Ayan Banerjee on 21/08/19.
//  Copyright © 2019 Ayan Banerjee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDice1: Int = 0;
    var randomDice2: Int = 0;
    
    @IBOutlet weak var diceImageController1: UIImageView!
    @IBOutlet weak var diceImageController2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        changeDiceImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        changeDiceImage	()
    }

    @IBAction func rollButtonController(_ sender: Any) {
        changeDiceImage()
    }
    
    func changeDiceImage(){
        randomDice1 = Int.random(in: 1...6)
        randomDice2 = Int.random(in: 1...6)
        diceImageController1.image = UIImage(named: "dice\(randomDice1)")
        diceImageController2.image = UIImage(named: "dice\(randomDice2)")
    }
    
}

