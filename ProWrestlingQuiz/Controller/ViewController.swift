//
//  ViewController.swift
//  ProWrestlingQuiz
//
//  Created by Ejaz Merchant on 1/23/18.
//  Copyright © 2018 Ejaz Merchant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    
    let allQuestions = QuestionBank()
    var pickedAnswer: Bool = false
    var questionNumber: Int = 0
    var score: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }
    
    
    @IBAction func actionPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = true
        } else if sender.tag == 2 {
            pickedAnswer = false
        }
        
        checkAnswer()
        
        questionNumber = questionNumber + 1
        
        updateUI()
    }
    
    func checkAnswer() {
        
        let correctAnswer = allQuestions.list[questionNumber].answer
        
        if correctAnswer == pickedAnswer {
            
            score = score + 1

        } else {
            
            print("Wrong!")
            
        }
        
    }
    
    
    func nextQuestion() {
        if questionNumber <= 19 {
            
        questionLabel.text = allQuestions.list[questionNumber].questionText
            
        } else {
            
            let alert = UIAlertController(title: "Great!", message: "You've finished all the questions, do you want to restart?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler:
            { UIAlertAction in
                self.startOver()
            })
            
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
        }
    }
    
    
    func updateUI() {
        progressBar.frame.size.width = (view.frame.size.width / 20) * CGFloat(questionNumber)
        progressLabel.text = String(questionNumber) + "/20"
        scoreLabel.text = "Score: " + String(score)
        nextQuestion()
        
    }
    
    func startOver() {
        
        questionNumber = 0
        score = 0
        updateUI()
    }

}

