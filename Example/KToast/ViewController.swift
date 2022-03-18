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
        let message = "Hello, I'm Toast! You can try to set more fonts and colors for me."
        let index = Int.random(in: 0..<5)
        switch index {
        case 1:
            KToast.showToast(text: message, backgroundColor: UIColor(red: 45/255, green: 185/255, blue: 76/255, alpha: 0.9))
        case 2:
            KToast.showToast(text: message, backgroundColor: UIColor(red: 191/255, green: 7/255, blue: 30/255, alpha: 0.9))
        case 3:
            KToast.showToast(text: message, textColor:.black, textFont: UIFont.boldSystemFont(ofSize: 24), backgroundColor: UIColor(red: 241/255, green: 191/255, blue: 70/255, alpha: 0.9))
        case 4:
            KToast.showToast(text: message, backgroundColor: UIColor(red: 61/255, green: 204/255, blue: 234/255, alpha: 0.9))
        default:
            KToast.showToast(text: message)
        }
    }
}

