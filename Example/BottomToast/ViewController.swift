//
//  ViewController.swift
//  BottomToast
//
//  Created by mohdshadab.siddique on 04/12/2022.
//  Copyright (c) 2022 mohdshadab.siddique. All rights reserved.
//

import UIKit
import BottomToast

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        showToastMessage(Title: "Oh snap", Message: "internal error oaaaaa")
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

