//
//  ViewController.swift
//  Dice
//
//  Created by Sriram Prasad on 19/10/18.
//  Copyright © 2018 FullStackNet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var imageArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    var firsrIndex :Int = 0
    var secondIndex : Int = 0
    @IBOutlet weak var secondImgView: UIImageView!
    @IBOutlet weak var firstImgView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func changeDice(_ sender: UIButton) {
        
  updateDiceImages()
    }

    
    func updateDiceImages() {
        firsrIndex = Int.random(in: 1...5)
        secondIndex  = Int.random(in: 1...5)
        firstImgView.image = UIImage(named:imageArray[firsrIndex])
        
        secondImgView.image = UIImage(named:imageArray[secondIndex])

    
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake{
            updateDiceImages()
        }
    }
}

