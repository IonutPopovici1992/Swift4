//
//  SwitchStatus.swift
//  Eluxon
//
//  Created by John on 12/7/17.
//  Copyright © 2017 John. All rights reserved.
//

import Foundation

enum SwitchStatus: Togglable {
    case on
    case off
    
    mutating func toggle() {
        switch self {
            case .on:
                self = .off
            case .off:
                self = .on
        }
    }
    
}
