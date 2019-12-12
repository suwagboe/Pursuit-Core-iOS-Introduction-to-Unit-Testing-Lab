//
//  trivia.swift
//  Introduction-to-Unit-Testing-Lab
//
//  Created by Pursuit on 12/12/19.
//  Copyright © 2019 Pursuitful stuff. All rights reserved.
//

import Foundation

struct Trivia: Codable {
    
    let results: [Info]
    
}

struct Info: Codable {
    
    let category: String
    let difficulty: String
    let question: String
    let correct_answer: String
    let Incorrect_answers: Answer
    
}

struct Answer: Codable {
    let IsThisCorrect: String
}

extension Trivia {
    
    static func getTriviaData() -> [Info] {
        
        var questions = [Info]()
        
        
        guard let fileURL = Bundle.main.url(forResource: "trivia", withExtension: "json") else {
            fatalError("check the way you are passing the json may not be completely correct")
        }
        
        do {
            
            let data = try Data(contentsOf: fileURL)
            
            let spectificTriviaInfo = try JSONDecoder().decode(Trivia.self, from: data)
            
            questions = spectificTriviaInfo.results
            
            
        } catch {
            fatalError("\(error)")
        }
        return questions
    }
    
    
}
