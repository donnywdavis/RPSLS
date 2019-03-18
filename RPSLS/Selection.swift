//
//  Selection.swift
//  RPSLS
//
//  Created by Donald Davis on 18.03.19.
//  Copyright © 2019 Donny Davis. All rights reserved.
//

import UIKit

enum Selection: Int {
    case rock
    case paper
    case scissors
    case lizard
    case spock

    var image: UIImage? {
        switch self {
        case .rock: return UIImage(named: "rock")
        case .paper: return UIImage(named: "paper")
        case .scissors: return UIImage(named: "scissors")
        case .lizard: return UIImage(named: "lizard")
        case .spock: return UIImage(named: "spock")
        }
    }
}
