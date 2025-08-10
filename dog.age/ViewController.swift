//
//  ViewController.swift
//  dog.age
//
//  Created by Pedro Henrique Martins dos Santos on 7/28/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var resultAge: UILabel!
    
    @IBOutlet weak var inputAgeDog: UITextField!
    
    func calculateDogAgeInHumanYears(dogAge: Int) -> Int {
        return dogAge * 7
    }
    
    @IBAction func calculateAge(_ sender: Any) {
        inputAgeDog.resignFirstResponder()
        
        guard let text = inputAgeDog.text,
              let dogAge = Int(text),
              dogAge > 0 else {
            resultAge.text = "Please enter a valid age."
            return
        }
        
        let finalAge = calculateDogAgeInHumanYears(dogAge: dogAge)
        resultAge.text = "The dog's age is: \(finalAge) years."
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputAgeDog.accessibilityIdentifier = "inputAgeDog"
        resultAge.accessibilityIdentifier = "resultAge"
        
    }


}

