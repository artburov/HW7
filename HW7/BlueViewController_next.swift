//
//  BlueViewController_next.swift
//  HW7
//
//  Created by Admin on 15.04.2020.
//  Copyright © 2020 home. All rights reserved.
//

import UIKit

class BlueViewController_next: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        dismiss(animated: true, completion: nil)
    }

}
