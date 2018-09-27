//
//  Game.swift
//  FizzBuzz
//
//  Created by Robin Malhotra on 26/09/18.
//  Copyright © 2018 Robin Malhotra. All rights reserved.
//

import Foundation

class Game {
    var score = 0

    let brain = Brain()

    func play(move: Brain.Result) -> Bool {

        let result = brain.check(number: score) == move

        if result {
            score += 1
        }
        return result
    }
}
