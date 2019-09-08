//
//  ViewController.swift
//  Homework_CommunicationPattern
//
//  Created by Sky on 9/7/19.
//  Copyright © 2019 Sky. All rights reserved.
//

import UIKit

class BaseView: UIViewController {
    
    @IBOutlet weak var fruitImage: UIImageView!
    @IBOutlet weak var fruitName: UILabel!
    @IBOutlet weak var drinkImage: UIImageView!
    @IBOutlet weak var drinkName: UILabel!
    @IBOutlet weak var chooseButton: UIButton!
    
    @IBAction func unwindSegue(_ sender: UIStoryboardSegue) {}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chooseButton.layer.cornerRadius = chooseButton.frame.size.height / 2
        setupStart()
    }
    
    @IBAction func chooseButtonTapped(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "FruitView") as! FruitView
        vc.fruitDelegate = self
        present(vc, animated: true, completion: nil)
    }
    
    private func setupStart() {
        
        NotificationCenter.default.addObserver(forName: Notification.Name("Cocacola"), object: DrinkView.self, queue: .main) { [weak self] _ in
            self?.drinkImage.image = UIImage(named: "cocacola")
            self?.drinkName.text = "Cocacola Coke"
            self?.drinkName.isHidden = false
        }
        NotificationCenter.default.addObserver(forName: Notification.Name("Pepsi Coke"), object: DrinkView.self, queue: .main) { [weak self] _ in
            self?.drinkImage.image = UIImage(named: "pepsi")
            self?.drinkName.text = "Pepsi Coke"
            self?.drinkName.isHidden = false
        }
    }
}

extension BaseView: FruitSelectionDelegate {
    func fruitChoice(image: UIImage, name: String) {
        fruitImage.image = image
        fruitName.text = name
    }
}
