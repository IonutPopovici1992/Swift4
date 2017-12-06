//
//  ColorTransferDelegate.swift
//  Color Magic
//
//  Created by John on 12/6/17.
//  Copyright © 2017 John. All rights reserved.
//

import Foundation
import UIKit

protocol ColorTransferDelegate {
    func userDidChoose(color: UIColor, withName colorName: String)
}
