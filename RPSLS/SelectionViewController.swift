//
//  ViewController.swift
//  RPSLS
//
//  Created by Donald Davis on 18.03.19.
//  Copyright © 2019 Donny Davis. All rights reserved.
//

import UIKit

class SelectionViewController: UIViewController {

    @IBOutlet weak var rock: UIImageView!
    @IBOutlet weak var paper: UIImageView!
    @IBOutlet weak var scissors: UIImageView!
    @IBOutlet weak var lizard: UIImageView!
    @IBOutlet weak var spock: UIImageView!

    private var tapGesture: UITapGestureRecognizer {
        return UITapGestureRecognizer(target: self, action: #selector(imageTapped(_:)))
    }

    private var selection: Selection?

    override func viewDidLoad() {
        super.viewDidLoad()

        rock.addGestureRecognizer(tapGesture)
        paper.addGestureRecognizer(tapGesture)
        scissors.addGestureRecognizer(tapGesture)
        lizard.addGestureRecognizer(tapGesture)
        spock.addGestureRecognizer(tapGesture)
    }

    @objc private func imageTapped(_ sender: UITapGestureRecognizer) {
        guard let view = sender.view else { return }

        switch view {
        case rock:
            selection = .rock
        case paper:
            selection = .paper
        case scissors:
            selection = .scissors
        case lizard:
            selection = .lizard
        case spock:
            selection = .spock
        default:
            return
        }

        performSegue(withIdentifier: "ResultsSeque", sender: nil)
    }
}

