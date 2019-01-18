//
//  ViewController.swift
//  Sprint 6 Challenge
//
//  Created by Ivan Caldwell on 1/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Outlets
    @IBOutlet weak var padlockImage: UIImageView!
    @IBOutlet weak var resetButton: UIBarButtonItem!
    @IBOutlet weak var backgroundView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.viewDidLoad()
        resetButton.title = ""
        resetButton.isEnabled = false
    }
    
    
    @IBAction func resetButtonTapped(_ sender: Any) {
        self.padlockImage.image = UIImage(named: "Locked")
        resetButton.title = ""
        resetButton.isEnabled = false
        CustomControl.thumb.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
    }
    
    @IBAction func updateImage(_ sender: CustomControl) {
        if !resetButton.isEnabled {
            let number = CustomControl.value
            if number >= 192 {
                print("Unlocked at value: \(number)")
                self.padlockImage.image = UIImage(named: "Unlocked")
                UIView.animate(withDuration: 3.0) {
                    self.resetButton.title = "Reset"
                    self.resetButton.isEnabled = true
                }
            }
        }
    }
}
