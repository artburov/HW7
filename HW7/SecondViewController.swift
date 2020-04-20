//
//  SecondViewController.swift
//  HW7
//
//  Created by Admin on 17.04.2020.
//  Copyright © 2020 home. All rights reserved.
//

import UIKit

protocol BlueControllerDelegate: class {
    func textColor(_ text: String)
    func bgColor(_ color: UIColor)
}

class SecondViewController: UIViewController {
    var setColor = ""
    
    var delegate: BlueControllerDelegate?
    
    @IBOutlet weak var colorSetLabel: UILabel!
    
      
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorSetLabel.text = setColor
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func selectGreenBtn(_ sender: UIButton) {
        delegate?.textColor("Green color selected")
        delegate?.bgColor(.green)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func selectBlueBtn(_ sender: UIButton) {
        delegate?.textColor("Blue color selected")
        delegate?.bgColor(.blue)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func selectRedBtn(_ sender: UIButton) {
        delegate?.textColor("Red color selected")
        delegate?.bgColor(.red)
        dismiss(animated: true, completion: nil)
    }
}
