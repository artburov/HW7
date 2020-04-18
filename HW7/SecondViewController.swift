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
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ShowGreen" {
            if let vc1 = segue.destination as? ViewController, segue.identifier == "ShowGreen" {
                vc1.colorSelected = "Green Selected"
                vc1.self.view.backgroundColor = #colorLiteral(red: 0.0582990115, green: 1, blue: 0.01099159527, alpha: 1)
            }
        }
        
        if segue.identifier == "ShowBlue" {
            if let vc1 = segue.destination as? ViewController, segue.identifier == "ShowBlue" {
                vc1.colorSelected = "Blue Selected"
                vc1.self.view.backgroundColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
            }
        }
        
        if segue.identifier == "ShowRed" {
            if let vc1 = segue.destination as? ViewController, segue.identifier == "ShowRed" {
                vc1.colorSelected = "Red Selected"
                vc1.self.view.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
            }
        }
    }
    
    @IBAction func greenSelectedBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "ShowGreen", sender: nil)
    }
  
    @IBAction func blueSelectedBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "ShowBlue", sender: nil)
    }
    
    @IBAction func redSelectedBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "ShowRed", sender: nil)
    }
}
