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
        navigationItem.title = "Hello!"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var lockunlockImage: UIImageView!
    @IBAction func reset(_ sender: Any) {
        
        //reset()
        locked()
        
    }
    
    @IBAction func rounded(_ sender: Radius) {
    }
    
  
    
    @IBAction func Unlock(_ sender: CustomControl) {
        
        unlock()
    }
    func unlock() {
        lockunlockImage.image = UIImage(named: "Unlocked")
       
    }
    func locked() {
        lockunlockImage.image = UIImage(named: "Locked")
    }
    
    var unlockImage: UIImage = UIImage(named: "Unlocked")!
    var lockedImage: UIImage = UIImage(named: "Locked")!
}

