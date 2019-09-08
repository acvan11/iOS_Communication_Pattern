//
//  FruiteView.swift
//  Homework_CommunicationPattern
//
//  Created by Sky on 9/7/19.
//  Copyright © 2019 Sky. All rights reserved.
//

import UIKit

protocol FruitSelectionDelegate {
    func fruitChoice(image: UIImage, name: String)
}

class FruitView: UIViewController {
    
    var fruitDelegate: FruitSelectionDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func appButtonTapped(_ sender: UIButton) {
        fruitDelegate.fruitChoice(image: UIImage(named: "apple1")!, name: "Apple")
        performSegue(withIdentifier: "DrinkView", sender: nil)
    }
    
    @IBAction func orangeButtonTapped(_ sender: UIButton) {
        fruitDelegate.fruitChoice(image: UIImage(named: "orange1")!, name: "Orange")
        performSegue(withIdentifier: "DrinkView", sender: nil)
    }
    
}
