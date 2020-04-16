//
//  BlueViewController.swift
//  HW7
//
//  Created by Admin on 15.04.2020.
//  Copyright © 2020 home. All rights reserved.
//

import UIKit

protocol BlueControllerDelegate {
    func setRole(_ role: String)
}

class BlueViewController: UIViewController {
    var userName = ""

    var delegate: BlueControllerDelegate?
    
    @IBOutlet weak var roleTextField: UITextField!
    @IBOutlet weak var userNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        userNameLabel.text = userName
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
//        dismiss(animated: true, completion: nil)
        navigationController?.popViewController(animated: true)
        delegate?.setRole(roleTextField.text!)
        
    }
}
