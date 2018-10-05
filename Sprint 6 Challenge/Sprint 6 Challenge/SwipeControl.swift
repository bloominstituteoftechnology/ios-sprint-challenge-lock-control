//
//  SwipeControl.swift
//  Sprint 6 Challenge
//
//  Created by Farhan on 10/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class SwipeControl: UIControl {
    
    // MARK :- Properties
    
    let trackingBall = UILabel()
    
    var unlockedValueTracker: Int = 100
    
    // MARK :- Local Functions
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup(){
        
        // setup Label
        trackingBall.font = UIFont(name: "AppleColorEmoji", size: 30.0)!
        trackingBall.text = "⚫️"
        trackingBall.textAlignment = .left
        trackingBall.textColor = .gray
        
        // setup container view
        trackingBall.frame = CGRect(x: 0, y: 0, width: 30, height: 35)
//        let containerView = UIView(frame: containerViewFrame)
        
        // add tracking ball to container view
//        containerView.addSubview(trackingBall)
        self.addSubview(trackingBall)
        
        
    }
    
    private func updateValue (at touch: UITouch){
        
        // change x positon of the tracking ball
        if trackingBall.frame.contains(touch.location(in: self)) && trackingBall.frame.maxX <= 200 {
            
            trackingBall.frame = trackingBall.frame.offsetBy(dx: 32, dy: 0)
    
        }
        
    }
    
    // MARK :- Custom Control Delegate
    
    override func beginTracking(_ touch: UITouch, with event: UIEvent?) -> Bool {
        
//        updateValue(at: touch)
        
        return true
    }
    
    override func continueTracking(_ touch: UITouch, with event: UIEvent?) -> Bool {
        let touchPoint = touch.location(in: self)
        
        if bounds.contains(touchPoint) {
            
            updateValue(at: touch)
            sendActions(for: [.touchDragInside, .valueChanged])
            
        } else {
            sendActions(for: [.touchDragOutside, .valueChanged])
        }
        
        return true
    }
    
    override func endTracking(_ touch: UITouch?, with event: UIEvent?) {
        guard let touchPoint = touch?.location(in: self) else { return }
        
        if bounds.contains(touchPoint) {
            
            sendActions(for: [.touchUpInside, .valueChanged])
        } else {
            sendActions(for: [.touchUpOutside, .valueChanged])
        }
    }
    
    override func cancelTracking(with event: UIEvent?) {
        super.cancelTracking(with: event)
        sendActions(for: .touchCancel)
        
    }
    
    
    
}
