//
//  Brain.swift
//  FizzBuzz
//
//  Created by Robin Malhotra on 23/09/18.
//  Copyright © 2018 Robin Malhotra. All rights reserved.
//

import Foundation

class Brain {

    enum Result: Equatable {
        case fizz
        case buzz
        case fizzbuzz
        case none(number: Int)
    }

    func isNumber(_ number: Int, divisibleBy divisor: Int) -> Bool {
        return (divisor == 0) ? (false) : (number % divisor == 0)
    }

    func isDivisibleByThree(number: Int) -> Bool {
        return isNumber(number, divisibleBy: 3)
    }

    func isDivisibleByFive(number: Int) -> Bool {
        return isNumber(number, divisibleBy: 5)
    }

    func isDivisibleByFifteen(number: Int) -> Bool {
        return isDivisibleByThree(number: number) && isDivisibleByFive(number: number)
    }

    func check(number: Int) -> Result {
        if isDivisibleByFifteen(number: number) {
            return .fizzbuzz
        } else if isDivisibleByThree(number: number) {
            return .fizz
        } else if isDivisibleByFive(number: number) {
            return .buzz
        } else {
            return .none(number: number)
        }
    }
}
