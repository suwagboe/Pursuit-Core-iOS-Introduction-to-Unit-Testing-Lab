//
//  Introduction_to_Unit_Testing_LabTests.swift
//  Introduction-to-Unit-Testing-LabTests
//
//  Created by World Domination a Brand on 12/2/19.
//  Copyright © 2019 Pursuitful stuff. All rights reserved.
//

import XCTest
@testable import Introduction_to_Unit_Testing_Lab

class Introduction_to_Unit_Testing_LabTests: XCTestCase {
    
    //arrange
    let filename = "Joke"
           let ext = "json"

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testReadingDataFromRandomUser() {
        // want to check the data from the json is avaiable?
        
        // arrange : which is what we need assess to?
      let filename = "Joke"
             let ext = "json"
        
        // act : an action.. initiating the action to the data
        let data = Bundle.readRawJSONfile(filename: filename, ext: ext)
        
        XCTAssertNotNil(data)
    }
    
    func testParaseJSONDatatoUserArray() {
        // get the data and test the users array
        
        // arrange ??
        let filename = "Joke"
        let ext = "json"
        
        let data = Bundle.readRawJSONfile(filename: filename, ext: ext)
        
        //act
        // why is lowercase data
        let jokes = JokeData.getJokes(from: data)
        
        // assert
        // because this is the data you want to check if there is any data at all being passed meaning that it should be greater than 0..
        XCTAssertGreaterThan(jokes.count, 0, "the amount of jokes there are it \(jokes.count)")
        
    }
    
    func testCheckTheFirstJoke() {
        //assign
        let expectedFirstJokeSetup =
        """
        Why do programmers always mix up Halloween and Christmas?
        """
        
        // because of the extension that has the function getJokes I am now able to access the the data of jokes and access the first joke and then more specifically the setup of the first joke.
        
        //action.. what I need to access specifically.. what I want to check
        let firstJokeSetup = getJokes().first?.setup
        
        //assert
        XCTAssertEqual(firstJokeSetup, expectedFirstJokeSetup, "\(String(describing: firstJokeSetup)) should say \(expectedFirstJokeSetup)")
        
    }
    
    func testFirstJokePunchline() {
        //assign
        let expectedJokePunchline =
        "Because Oct 31 == Dec 25"
        
        // action
        let firstJokePunchline = getJokes().first?.punchline
        
        // assert
        XCTAssertEqual(expectedJokePunchline, firstJokePunchline, "The jokes are the same...")
    }

}

extension Introduction_to_Unit_Testing_LabTests {
    
    func getRawData() -> Data {
        let data = Bundle.readRawJSONfile(filename: filename, ext: ext)
        return data
    }
    
    
    func getJokes() -> [JokeData] {
        // this is the data
        let data = getRawData()
        
        //this get the data from above and filters it out based on what is wanted through the getJokes static function
        let jokes = JokeData.getJokes(from: data)
       return jokes
    }

}
