//
//  CreateAccountVC.swift
//  Smack
//
//  Created by John on 6/8/19.
//  Copyright © 2019 John. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: IBAction
    @IBAction func closePressedCA(sender: UIButton) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
}
