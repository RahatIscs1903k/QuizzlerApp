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
    ["Four + Two is equal to Six", "True"],
    ["Five - Three is greater than One", "True"],
    ["Three + Eight is less than Ten", "False"]
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        updateUI()
        
    }

    @IBAction func answerButtomPresser(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle //True, False
        let actualAnswer = quiz [questionNumber][1]
        
        if userAnswer == actualAnswer {
            print("Right!")
        } else {
            print("Wrong!")
        }
        
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
            
        
        updateUI()
        
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNumber][0]
    }
    
}

