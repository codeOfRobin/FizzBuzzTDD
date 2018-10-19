//
//  GamePlayingView.swift
//  FizzBuzz
//
//  Created by Robin Malhotra on 02/10/18.
//  Copyright © 2018 Robin Malhotra. All rights reserved.
//

import UIKit

class GamePlayingView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    let scoreLabel = UILabel()
    let fizzButton = UIButton()
    let buzzButton = UIButton()
    let FizzBuzzButton = UIButton()

    init() {
        super.init(frame: .zero)

        self.addSubview(scoreLabel)
        self.addSubview(fizzButton)


    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }



    func configure(withScore: Int) {

    }

}

extension GamePlayingView: Themeable {
    func applyTheme(_ theme: Theme) {
        self.backgroundColor = theme.colors.backgroundColor
    }
}
