//
//  ViewController.swift
//  Universal Knob
//
//  Created by Matthew Fecher on 10/16/17.
//  Copyright © 2017 Matthew Fecher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var knobOne: Knob!
    @IBOutlet weak var knobTwo: Knob!
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCallbacks()
    }
    
    //*****************************************************************
    // MARK: - Setup Knob 🎛 Callbacks
    //*****************************************************************
    
    func setupCallbacks() {
        
        knobOne.callback = { value in
            self.displayLabel.text = "Knob One: \(String(format: "%.02f", value))"
        }
        
        knobTwo.callback = { value in
            self.displayLabel.text = "Knob Two: \(String(format: "%.02f", value))"
        }
    }

}

