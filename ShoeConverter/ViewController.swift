//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Christopher Jones on 2014-09-26.
//  Copyright (c) 2014 ONESTEP Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menShoeSizeTextField: UITextField!
    @IBOutlet weak var menConvertedLabel: UILabel!
    @IBOutlet weak var womenShoeSizeTextField: UITextField!
    @IBOutlet weak var womenConvertedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func menConvertButtonPressed(sender: UIButton) {
        menConvertedLabel.text = "\(menShoeSizeTextField.text.toInt()! + 30) in European Shoe Size"
        menConvertedLabel.hidden = false
    }

    @IBAction func womenConvertButtonPressed(sender: UIButton) {
        // THROWS AN ERROR WHEN THE WOMEN'S CONVERT BUTTON IS HIT
        let sizeFromTextField = Double((womenShoeSizeTextField.text as NSString).doubleValue)
        womenConvertedLabel.text = "\(sizeFromTextField + 30.5) in European Shoe Size"
        womenConvertedLabel.hidden = false
    }
}

