//
//  ViewController.swift
//  HW7
//
//  Created by Admin on 13.04.2020.
//  Copyright © 2020 home. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorInfoLabel: UILabel!
       
    var selectedColor: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
           
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? SecondViewController, segue.identifier == "sendDataToSecondVC" {
            vc.setColor = selectedColor ?? "Select color below"
            vc.delegate = self
        }
    }
}

extension ViewController: BlueControllerDelegate {
    func bgColor(_ color: UIColor) {
        self.view.backgroundColor = color
    }
    
    func textColor(_ text: String) {
        selectedColor = text
        colorInfoLabel.text = "\(text)"
    }
}
