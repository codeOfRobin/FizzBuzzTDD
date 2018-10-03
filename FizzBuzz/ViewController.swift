//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Robin Malhotra on 23/09/18.
//  Copyright © 2018 Robin Malhotra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let gamePlayingView = GamePlayingView()

    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    var flag = false


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        self.view.backgroundColor = .white
        self.animate()

    }

    func animate() {
        UIView.animate(withDuration: 2.5, delay: 0.0, options: [], animations: {
            self.backgroundColor()
        }, completion: {_ in
            self.flag = !self.flag
            self.animate()
        })
    }

    func backgroundColor() {
        if self.flag {
            self.view.backgroundColor = .green
        } else {
            self.view.backgroundColor = .red
        }
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
//        gamePlayingView.frame = view.bounds
    }

}

