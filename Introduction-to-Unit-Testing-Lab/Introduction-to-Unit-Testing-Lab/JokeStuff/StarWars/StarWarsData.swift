//
//  StarWarsData.swift
//  Introduction-to-Unit-Testing-Lab
//
//  Created by Pursuit on 12/11/19.
//  Copyright © 2019 Pursuitful stuff. All rights reserved.
//

import Foundation

struct StarWarsInfo: Codable {
    let result: [Movie]// all of the data...
}

struct Movie: Codable {
    let title: String
    let opening_crawl: String // this should appear in the detail controller
}


extension StarWarsInfo {
    
    static func getMovies() -> [Movie]{
        
        var movies = [Movie]()
        
        guard let fileURL = Bundle.main.url(forResource: "starWars", withExtension: "json") else  {
            fatalError("the json is not passed correctly")
        }
        
        do {
            
            let data = try Data(contentsOf: fileURL)
            
            let specificMovieData = try JSONDecoder().decode(StarWarsInfo.self, from: data)
            movies = specificMovieData.result
           
        }catch {
            fatalError("developer error: \(error)")
        }
        
        return movies
    }
    
    
}
