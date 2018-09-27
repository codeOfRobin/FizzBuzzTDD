
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
        game.play(move: .fizz)
        XCTAssertEqual(game.score, 1)
    }

    func testGameStartsAtZero() {
        XCTAssertEqual(game.score, 0)
    }

    func testOnPlayTwiceScoreIncremented() {
        _ = game.play(move: .none(number: 1))
        _ = game.play(move: .none(number: 2))
        XCTAssertEqual(game.score, 2)
    }

    func testIfMoveIsRight() {
        game.score = 2
        let result = game.play(move: .fizz)
        XCTAssertEqual(result, true)
    }

    func testFizzWhenScoreIsOne() {
        game.score = 1
        let result = game.play(move: .fizz)
        XCTAssertEqual(result, false)
    }

    func testIfFizzMoveRight() {
        game.score = 2
        let result = game.play(move: .fizz)
        XCTAssertEqual(result, true)
    }

    func testIfFizzMoveWrong() {
        game.score = 3
        let result = game.play(move: .fizz)
        XCTAssertEqual(result, false)
    }

    func testIfBuzzMoveRight() {
        game.score = 4
        let result = game.play(move: .buzz)
        XCTAssertEqual(result, true)
    }

    func testIfBuzzMoveWrong() {
        game.score = 5
        let result = game.play(move: .buzz)
        XCTAssertEqual(result, false)
    }

    func testIfFizzBuzzMoveRight() {
        game.score = 14
        let result = game.play(move: .fizzbuzz)
        XCTAssertEqual(result, true)
    }

    func testIfFizzBuzzMoveWrong() {
        game.score = 15
        let result = game.play(move: .fizzbuzz)
        XCTAssertEqual(result, false)
    }

    func testIfMoveWrongNotIncremented() {
        game.score = 1
        _ = game.play(move: .fizz)
        XCTAssertEqual(game.score, 1)
    }
}
