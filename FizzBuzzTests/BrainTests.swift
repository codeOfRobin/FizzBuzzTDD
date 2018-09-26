//
//  BrainTests.swift
//  FizzBuzzTests
//
//  Created by Robin Malhotra on 23/09/18.
//  Copyright © 2018 Robin Malhotra. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class BrainTests: XCTestCase {

    let brain = Brain()

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testIsDivisibleByThree() {
        let result = brain.isDivisibleByThree(number: 3)
        XCTAssertEqual(result, true)
    }

    func testIsNotDivisibleByThree() {
        let result = brain.isDivisibleByThree(number: 1)
        XCTAssertEqual(result, false)
    }

    func testDivisibleByFive() {
        let result = brain.isDivisibleByFive(number: 5)
        XCTAssertEqual(result, true)
    }

    func testNotDivisibleByFive() {
        let result = brain.isDivisibleByFive(number: 1)
        XCTAssertEqual(result, false)
    }


    func testDivisibleByFifteen() {
        let result = brain.isDivisibleByFifteen(number: 15)
        XCTAssertEqual(result, true)
    }

    func testNotDivisibleByFifteen() {
        let result = brain.isDivisibleByFifteen(number: 1)
        XCTAssertEqual(result, false)
    }

    func testSayFizz() {
        let result = brain.check(number: 3)
        XCTAssertEqual(result, .fizz)
    }

    func testSayBuzz() {
        let result = brain.check(number: 5)
        XCTAssertEqual(result, .buzz)
    }

    func testSayFizzBuzz() {
        let result = brain.check(number: 15)
        XCTAssertEqual(result, .fizzbuzz)
    }

    func testSayNumber() {
        let result = brain.check(number: 1)
        XCTAssertEqual(result, .none(number: 1))
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
