//
//  ThirdViewController.swift
//  HW7
//
//  Created by Admin on 18.04.2020.
//  Copyright © 2020 home. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func greenColorBtn(_ sender: Any) {
        if let childVC = self.children.first as? FourViewController {
            childVC.view.backgroundColor = .green
        }
    }
    
    @IBAction func blueColorBtn(_ sender: Any) {
        if let childVC = self.children.first as? FourViewController {
            childVC.view.backgroundColor = .blue
        }
    }
    
    @IBAction func redColorBtn(_ sender: Any) {
        if let childVC = self.children.first as? FourViewController {
            childVC.view.backgroundColor = .red
        }
    }
}
