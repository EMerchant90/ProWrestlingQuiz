//
//  QuestionBank.swift
//  ProWrestlingQuiz
//
//  Created by Ejaz Merchant on 1/23/18.
//  Copyright © 2018 Ejaz Merchant. All rights reserved.
//

import Foundation

class QuestionBank {
    
    var list = [Question]()
    
    init() {
        
        let item = Question(text: "The Undertaker is undefeated at Wrestlemania", correctAnswer: false)
        
        list.append(item)
        
        list.append(Question(text: "Ric Flair is a 16 time World Champion.", correctAnswer: true))
        
        list.append(Question(text: "Jeff Hardy has never won the WWE Heavyweight Title.", correctAnswer: false))
        
        list.append(Question(text: "There were only 3 WWF/WWE Pay-Per-View events in 1989.", correctAnswer: false))
        
        list.append(Question(text: "Kenny Omega wrestled a broom.", correctAnswer: true))
        
        list.append(Question(text: "Lita won her first title on WWE Raw", correctAnswer: true))
        
        list.append(Question(text: "Wrestlemania XXX was held in New York City.", correctAnswer: false))
        
        list.append(Question(text: "Sting is a WWE Hall of Fame inductee.", correctAnswer: true))
        
        list.append(Question(text: "WCW started in Atlanta, Georgia", correctAnswer: true))
        
        list.append(Question(text: "Becky Lynch is from Australia", correctAnswer: false))
        
        list.append(Question(text: "Hulk Hogan was one of the original members of the Four Horseman", correctAnswer: false))
        
        list.append(Question(text: "Brock Lesnar lost to Goldberg in less than 2 minutes at Survivor Series 2016", correctAnswer: true))
        
        list.append(Question(text: "WCW Bash at the Beach Pay-Per-View event took place in February", correctAnswer: false))
        
        list.append(Question(text: "Randy Orton is a second generation WWE Superstar", correctAnswer: false))
        
        list.append(Question(text: "Chris Jericho started his wrestling career in ECW", correctAnswer: false))
        
        list.append(Question(text: "John Cena was in the movie Ready to Rumble", correctAnswer: true))
        
        list.append(Question(text: "Paul Heyman managed Steve Austin at one point in thier careers", correctAnswer: true))
        
        list.append(Question(text: "2018 was the first year of the Women's Royal Rumble", correctAnswer: true))
        
        list.append(Question(text: "Rey Mysterio always wore a mask", correctAnswer: false))
        
        list.append(Question(text: "AJ Styles is the currect leader of the Bullet Club", correctAnswer: false))
        
        
    }
    
    
}
