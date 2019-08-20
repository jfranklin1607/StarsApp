//
//  StarController.swift
//  Stars
//
//  Created by Joshua Franklin on 8/20/19.
//  Copyright © 2019 AMSU. All rights reserved.
//

import Foundation

class StarController {
    private(set) var stars: [Star] = []
    
    func createStar(named name: String, withDistance distance: Double) {
        let star = Star(name: name, distance: distance)
        stars.append(star)
    }
}
