//
//  ViewController.swift
//  ExtensionsUI
//
//  Created by John on 12/4/17.
//  Copyright © 2017 John. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorizeButton: UIButton!
    @IBOutlet weak var wiggleButton: UIButton!
    @IBOutlet weak var dimButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorizeButton.titleLabel?.textAlignment = NSTextAlignment.center
        wiggleButton.titleLabel?.textAlignment = NSTextAlignment.center
        dimButton.titleLabel?.textAlignment = NSTextAlignment.center
    }
    
    @IBAction func colorizeButtonWasPressed(_ sender: UIButton) {
        colorizeButton.colorize()
    }
    
    @IBAction func wiggleButtonWasPressed(_ sender: UIButton) {
        wiggleButton.wiggle()
    }
    
    @IBAction func dimButtonWasPressed(_ sender: UIButton) {
        dimButton.dim()
    }

}
