//
//  ViewController.swift
//  QuizzlerApp
//
//  Created by Rakhat on 15.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButtom: UIButton!
    @IBOutlet weak var falseButtom: UIButton!
    
    let quiz = [
    "Four + Two is equal to Six",
    "Five - Three is greater than One",
    "Three + Eight is less than Ten"
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        updateUI()
        
    }

    @IBAction func answerButtomPresser(_ sender: UIButton) {
        questionNumber += 1
        updateUI()
        
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNumber ]
    }
    
}

