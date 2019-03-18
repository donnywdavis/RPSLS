//
//  ResultsViewController.swift
//  RPSLS
//
//  Created by Donald Davis on 18.03.19.
//  Copyright © 2019 Donny Davis. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var resultsLabel: UILabel!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var winnerSelection: UIImageView!
    @IBOutlet weak var loserSelection: UIImageView!

    var playerSelection: Selection?

    override func viewDidLoad() {
        super.viewDidLoad()

        playGame()
    }

    private func playGame() {
        let skyNetSelection = Selection(rawValue: Int.random(in: 0...4)) ?? .rock

        switch (playerSelection, skyNetSelection) {
        case (.rock?, .rock),
             (.paper?, .paper),
             (.scissors?, .scissors),
             (.lizard?, .lizard),
             (.spock?, .spock):

            winnerSelection.image = playerSelection?.image
            loserSelection.image = skyNetSelection.image
            resultsLabel.text = "It's A Tie!"
            label.isHidden = true

        case (.rock?, .scissors),
             (.rock?, .lizard),
             (.paper?, .rock),
             (.paper?, .spock),
             (.scissors?, .paper),
             (.scissors?, .lizard),
             (.lizard?, .paper),
             (.lizard?, .spock),
             (.spock?, .rock),
             (.spock?, .scissors):

            winnerSelection.image = playerSelection?.image
            loserSelection.image = skyNetSelection.image
            resultsLabel.text = "You Win!"
            label.isHidden = false

        default:
            winnerSelection.image = skyNetSelection.image
            loserSelection.image = playerSelection?.image
            resultsLabel.text = "You Loose"
            label.isHidden = false
        }
    }
}
