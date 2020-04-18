//
//  ViewController.swift
//  HW7
//
//  Created by Admin on 13.04.2020.
//  Copyright © 2020 home. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var colorSelected = ""
    
    @IBOutlet weak var colorSelectedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if colorSelected == "" {
            colorSelectedLabel?.text = "No color selected yet"
        }else {
            colorSelectedLabel?.text = colorSelected
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? SecondViewController, segue.identifier == "SecondView" {
            vc.colorChoice = colorSelectedLabel.text!
        }
    }
}





