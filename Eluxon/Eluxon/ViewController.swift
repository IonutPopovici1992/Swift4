//
//  ViewController.swift
//  Eluxon
//
//  Created by John on 12/7/17.
//  Copyright © 2017 John. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var onOffLabel: UILabel!
    @IBOutlet weak var toggleButton: UIButton!
    
    var switchStatus: SwitchStatus = .off

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func toggleButtonWasPressed(_ sender: UIButton) {
        
        switchStatus.toggle()
        
        if switchStatus == .off {
            toggleButton.setImage(UIImage(named: "offBtn")!, for: .normal)
            view.backgroundColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
            onOffLabel.text = "🌚 OFF 🌚"
            onOffLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        } else {
            toggleButton.setImage(UIImage(named: "onBtn")!, for: .normal)
            view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            onOffLabel.text = "🌝 ON 🌝"
            onOffLabel.textColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
        }
        
    }

}
