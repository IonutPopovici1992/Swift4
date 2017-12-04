//
//  Helpers.swift
//  ExtensionsUI
//
//  Created by John on 12/4/17.
//  Copyright © 2017 John. All rights reserved.
//

import UIKit

func generateRandomNumbers(quantity: Int) -> [CGFloat] {
    
    var randomNumberArray = [CGFloat]()
    for _ in 1...quantity {
        let randomNumber = CGFloat(arc4random_uniform(255))
        randomNumberArray.append(randomNumber)
    }
    
    return randomNumberArray
}
