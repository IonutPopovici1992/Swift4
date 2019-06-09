//
//  ChannelVC.swift
//  Smack
//
//  Created by John on 2/25/19.
//  Copyright © 2019 John. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {
    
    // MARK: IBOutlet
    @IBOutlet weak var loginButton: UIButton!
    
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) {}

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }
    
    // MARK: IBAction
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }

}
