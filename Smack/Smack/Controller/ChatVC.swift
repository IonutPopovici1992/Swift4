//
//  ChatVC.swift
//  Smack
//
//  Created by John on 2/25/19.
//  Copyright © 2019 John. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {
    
    // MARK: IBOutlet
    @IBOutlet weak var menuButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuButton.addTarget(self.revealViewController(),
                             action: #selector(SWRevealViewController.revealToggle(_:)),
                             for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
    }

}
