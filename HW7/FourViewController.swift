//
//  FourViewController.swift
//  HW7
//
//  Created by Admin on 18.04.2020.
//  Copyright © 2020 home. All rights reserved.
//

import UIKit

class FourViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func greenColorBtn(_ sender: Any) {
        if let parentVC = self.parent as? ThirdViewController {
            parentVC.view.backgroundColor = .green
        }
    }
    
    @IBAction func blueColorBtn(_ sender: Any) {
        if let parentVC = self.parent as? ThirdViewController {
            parentVC.view.backgroundColor = .blue
        }
    }
    
    @IBAction func redColorBtn(_ sender: Any) {
        if let parentVC = self.parent as? ThirdViewController {
            // color value is ColorLiteral
            parentVC.view.backgroundColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        }
    }
}
