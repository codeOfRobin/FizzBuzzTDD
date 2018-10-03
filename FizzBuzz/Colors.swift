//
//  Colors.swift
//  FizzBuzz
//
//  Created by Robin Malhotra on 02/10/18.
//  Copyright © 2018 Robin Malhotra. All rights reserved.
//

import UIKit

protocol Colors {
    var backgroundColor: UIColor { get }
    var textAndIcons: UIColor { get }
    var losingBackground: UIColor { get }
    var timerColor: UIColor { get }
}

protocol Theme {
    var colors: Colors { get }
}

protocol Themeable {
    func applyTheme(_ theme: Theme)
}

struct DefaultTheme: Theme {

    struct DefaultColors: Colors {
        let backgroundColor = UIColor(red:0.76, green:0.95, blue:1.00, alpha:1.0)
        let textAndIcons = UIColor(red:0.97, green:0.49, blue:0.26, alpha:1.0)
        let losingBackground = UIColor(red:0.86, green:0.22, blue:0.32, alpha:1.0)
        let timerColor = UIColor(red:0.00, green:0.07, blue:0.42, alpha:1.0)
    }

    let colors: Colors
    init() {
        self.colors = DefaultColors()
    }
}

struct DarkTheme: Theme {
    struct DarkColors: Colors {
        let backgroundColor = UIColor(red:0.16, green:0.18, blue:0.31, alpha:1.0)
        let textAndIcons = UIColor.white
        let losingBackground = UIColor(red:0.63, green:0.13, blue:0.30, alpha:1.0)
        let timerColor = UIColor(red:1.00, green:0.42, blue:0.00, alpha:1.0)
    }

    let colors: Colors
    init() {
        self.colors = DarkColors()
    }
}
