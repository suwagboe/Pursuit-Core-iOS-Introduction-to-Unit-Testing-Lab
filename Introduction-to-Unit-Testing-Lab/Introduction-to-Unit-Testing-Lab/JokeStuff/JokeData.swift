//
//  RandomJokeData.swift
//  Introduction-to-Unit-Testing-Lab
//
//  Created by World Domination a Brand on 12/2/19.
//  Copyright © 2019 Pursuitful stuff. All rights reserved.
//

import Foundation

struct JokeData: Codable {
    // remembe the difference between : and =
    // and remember the spelling of things in the json correlating to how I spell them here
    let setup: String
    let punchline: String
}




extension JokeData {
    static func getJokes(from data: Data) -> [JokeData] {
        var joke = [JokeData]()
        do {
            // need to better understand what is happening here. 
            let assignedJoke = try JSONDecoder().decode([JokeData].self, from: data)
            joke = assignedJoke
        }catch{
            fatalError("developer error: \(error)")
        }
        return joke
    }
    
}
