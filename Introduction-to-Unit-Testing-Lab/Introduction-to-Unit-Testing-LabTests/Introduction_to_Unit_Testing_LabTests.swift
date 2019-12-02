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
        
        //
        XCTAssertNotNil(data)
    }

}
