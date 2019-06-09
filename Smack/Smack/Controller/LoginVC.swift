//
//  LoginVC.swift
//  Smack
//
//  Created by John on 6/8/19.
//  Copyright © 2019 John. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: IBAction
    @IBAction func closePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func createAccountButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    }
    
}
