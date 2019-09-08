//
//  DrinkView.swift
//  Homework_CommunicationPattern
//
//  Created by Sky on 9/7/19.
//  Copyright © 2019 Sky. All rights reserved.
//

import UIKit

class DrinkView: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()        
    }
    
    @IBAction func cokeButtonTapped(_ sender: UIButton) {
        NotificationCenter.default.post(name: Notification.Name("Cocacola"), object: DrinkView.self)
        performSegue(withIdentifier: "BaseView", sender: self)
    }
    
    @IBAction func pepsiButtonTapped(_ sender: UIButton) {
        NotificationCenter.default.post(name: Notification.Name("Pepsi Coke"), object: DrinkView.self)
        performSegue(withIdentifier: "BaseView", sender: self)
    }
    
    deinit {
        print("TeamVC is Deallocated")
    }
}
