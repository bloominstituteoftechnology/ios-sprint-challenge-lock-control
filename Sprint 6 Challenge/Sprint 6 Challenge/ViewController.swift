//
//  ViewController.swift
//  Sprint 6 Challenge
//
//  Created by Spencer Curtis on 8/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        sliderLeadingConstraint.constant = 0
    }
    
    @IBAction func lockDraggedOrTapped(_ sender: LockControl) {
        sender.maxValue = sliderContainer.frame.width - slider.frame.width
        sliderLeadingConstraint.constant = sender.value
    }
    
    
    @IBOutlet weak var lockImage: UIImageView!
    @IBOutlet weak var outerContainer: UIView!
    @IBOutlet weak var slider: UIView!
    @IBOutlet weak var sliderContainer: LockControl!
    @IBOutlet weak var sliderLeadingConstraint: NSLayoutConstraint!
    
}

