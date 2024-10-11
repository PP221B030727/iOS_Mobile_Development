//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var arr = [UIImage(named: "DiceOne.png"), UIImage(named: "DiceTwo.png"), UIImage(named: "DiceThree.png"), UIImage(named: "DiceFour.png"), UIImage(named: "DiceFive.png"),]
    
    @IBOutlet weak var leftDice: UIImageView!
    
    @IBOutlet weak var rightDice: UIImageView!
    
    @IBAction func roll(_ sender: Any) {
        leftDice.image = arr.randomElement() ?? UIImage(named: "DiceOne.png")
        rightDice.image = arr.randomElement() ?? UIImage(named: "DiceOne.png")
    }
}

