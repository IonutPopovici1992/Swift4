//
//  ColorPickerVC.swift
//  Color Magic
//
//  Created by John on 12/5/17.
//  Copyright © 2017 John. All rights reserved.
//

import UIKit

class ColorPickerVC: UIViewController {
    
    var delegate: ColorTransferDelegate? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func colorButtonWasPressed(_ sender: UIButton) {
        if delegate != nil {
            delegate?.userDidChoose(color: sender.backgroundColor!,
                                    withName: sender.titleLabel!.text!)
            self.navigationController?.popViewController(animated: true)
        }
    }

}
