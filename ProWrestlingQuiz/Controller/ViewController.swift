//
//  ViewController.swift
//  ProWrestlingQuiz
//
//  Created by Ejaz Merchant on 1/23/18.
//  Copyright © 2018 Ejaz Merchant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let allQuestions = QuestionBank()
    var pickedAnswer: Bool = false
    var questionNumber: Int = 0
    var score: Int = 0

    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstQuestion = allQuestions.list[0]
        questionLabel.text = firstQuestion.questionText
        
    }
    
    
    @IBAction func actionPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = true
        } else if sender.tag == 2 {
            pickedAnswer = false
        }
        
        checkAnswer()
        
        questionNumber = questionNumber + 1
        
        
    }
    
    func checkAnswer() {
        
        let correctAnswer = allQuestions.list[questionNumber].answer
        
        if correctAnswer == pickedAnswer {
            
            score += 1

        } else {
            
            print("Wrong!")
            
        }
        
    }
    
    
    func nextQuestion() {
        if questionNumber <= 19 {
            
        questionLabel.text = allQuestions.list[questionNumber].questionText
            
        updateUI()
            
            
        } else {
            
            let alert = UIAlertController(title: "Great!",
                                          message: "You've finished all the questions, do you want to restart?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart",
                                              style: .default, handler: {
                                                (UIAlertAction) in
                                                self.startOver()
                                                self.scoreLabel.text = "Score: \(0)"
            })
            
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
        }
    }
    
    
    func startOver() {
        
        questionNumber = 0
        nextQuestion()
        score = 0
    }
    
    func updateUI() {
        
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(questionNumber + 1) / 20"
        progressBar.frame.size.width = (view.frame.size.width) / 20 * CGFloat(questionNumber + 1)
        
    }
    
    
    
    
    
    
    
    
    
    
    
    



}

