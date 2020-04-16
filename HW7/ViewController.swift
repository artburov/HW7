//
//  ViewController.swift
//  HW7
//
//  Created by Admin on 13.04.2020.
//  Copyright © 2020 home. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var finalNameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? BlueViewController, segue.identifier == "ShowBlue" {
            vc.userName = nameTextField.text!
            vc.delegate = self
        }
    }
    @IBAction func showBlueBtn(_ sender: Any) {
    }
}

extension ViewController: BlueControllerDelegate {
    func setRole(_ role: String) {
        finalNameLabel.text = "\(nameTextField.text!), \(role)"
    }
    
    
}

