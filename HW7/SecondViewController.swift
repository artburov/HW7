//
//  SecondViewController.swift
//  HW7
//
//  Created by Admin on 17.04.2020.
//  Copyright © 2020 home. All rights reserved.
//

import UIKit

protocol SecondControllerDelegate {
    func setColor(_ color: String)
}

class SecondViewController: UIViewController {
    var colorChoice = ""
    var colorText = ""
    
    var delegate: SecondControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        colorChoiceTextField.text = colorChoice
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var colorChoiceTextField: UITextField!
    
    
    @IBAction func selectedGreenBtn(_ sender: Any) {
        colorText = "Green selected!!!"
    }
    

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        dismiss(animated: true, completion: nil)
        delegate?.setColor("Test T")
    }
}
