
//
//  GameTests.swift
//  FizzBuzzTests
//
//  Created by Robin Malhotra on 26/09/18.
//  Copyright © 2018 Robin Malhotra. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class GameTests: XCTestCase {

    let game = Game()

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testOnPlayScoreIncremented() {
        game.play()
        XCTAssertEqual(game.score, 1)
    }

    func testGameStartsAtZero() {
        sleep(2)
        XCTAssertEqual(game.score, 0)
    }
}
