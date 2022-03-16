//
//  ViewController.swift
//  KToast
//
//  Created by kermit.kmvdata on 03/09/2022.
//  Copyright (c) 2022 kermit.kmvdata. All rights reserved.
//

import UIKit
import KToast

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showToast(_ sender: Any) {
        KToast.showToast(text: "n iOS 15 and later, the value of this property is true when the window .", textColor: .white)
    }
}

