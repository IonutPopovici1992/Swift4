//
//  Wage.swift
//  WindowShopper
//
//  Created by John on 1/27/19.
//  Copyright © 2019 John. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
