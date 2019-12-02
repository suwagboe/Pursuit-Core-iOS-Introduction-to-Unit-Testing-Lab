//
//  joke Bundle+Extension.swift
//  Introduction-to-Unit-Testing-Lab
//
//  Created by World Domination a Brand on 12/2/19.
//  Copyright © 2019 Pursuitful stuff. All rights reserved.
//

import Foundation

// why are we labeling the bundle as an extenstion?? what is Bundle originally.
extension Bundle{
    static func readRawJSONfile(filename: String, ext: String) -> Data {
        //fileURL = Bundle.readRawJSONfile(filename: "joke", ext: "json") when is this used
        guard let fileURL = Bundle.main.url(forResource: filename, withExtension: ext) else {
            fatalError("resources with file name \(filename) need to be check..")
        }
        
        var data: Data!
        
        do {
            // this will assign the data that is in the url file to the empty varable data
            data = try Data.init(contentsOf: fileURL)
        } catch {
            fatalError("contents not found: \(fileURL)")
        }
        
        return data
    }
    
    
}
