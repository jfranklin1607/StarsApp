//
//  Star.swift
//  Stars
//
//  Created by Joshua Franklin on 8/20/19.
//  Copyright © 2019 AMSU. All rights reserved.
//

import Foundation

struct Star: Codable {
    var name: String
    var distance: Double
    
    var distanceDescription: String {
        return "\(distance) light years away"
    }
}
