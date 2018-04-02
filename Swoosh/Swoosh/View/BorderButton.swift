//
//  BorderButton.swift
//  Swoosh
//
//  Created by John on 12/8/17.
//  Copyright © 2017 John. All rights reserved.
//

import UIKit

class BorderButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
        layer.cornerRadius = 5.0
    }
    
}
