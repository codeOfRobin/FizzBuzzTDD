//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Robin Malhotra on 23/09/18.
//  Copyright © 2018 Robin Malhotra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .red
        // Do any additional setup after loading the view, typically from a nib.
    }


}

