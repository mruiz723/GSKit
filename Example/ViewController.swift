//
//  ViewController.swift
//  Example
//
//  Created by Marlon David Ruiz Arroyave on 11/19/19.
//  Copyright © 2019 mruiz723. All rights reserved.
//

import UIKit
import GSKit

class ViewController: GSViewController {

    var colors: [UIColor] = [.red, .green, .blue, .orange, .purple]
    var currentIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        changeBackground(withColor: colors[currentIndex])

        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleClick)))
    }

    @objc func handleClick() {
        currentIndex += 1

        if !colors.indices.contains(currentIndex) {
            currentIndex = 0
        }

        changeBackground(withColor: colors[currentIndex])
    }
}
