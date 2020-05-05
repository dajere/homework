//
//  ViewController.swift
//  How To Use Swipe Gesture Recognizer
//
//  Created by Supine Hub Technologies Pvt. Ltd. on 12/03/20.
//  Copyright © 2020 Supine Hub Technologies Pvt. Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let CentreView = UIView()
    let DirectionLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        CentreView.backgroundColor = UIColor.red
        CentreView.layer.masksToBounds = true
        CentreView.layer.cornerRadius = 16
        CentreView.frame = CGRect(x: 16, y: 200, width: self.view.frame.width - 32, height: 400)
        self.view.addSubview(CentreView)
        
        DirectionLabel.text = "Welcome To Swifthub"
        DirectionLabel.textColor = UIColor.white
        DirectionLabel.textAlignment = .center
        DirectionLabel.font = UIFont.boldSystemFont(ofSize: 30)
        DirectionLabel.frame = CGRect(x: 16, y: 16, width: self.CentreView.frame.width - 32, height: 384)
        self.CentreView.addSubview(DirectionLabel)
        
        let SwipeUp = UISwipeGestureRecognizer()
        let SwipeDown = UISwipeGestureRecognizer()
        let SwipeLeft = UISwipeGestureRecognizer()
        let SwipeRight = UISwipeGestureRecognizer()
        
        SwipeUp.direction = .up
        SwipeDown.direction = .down
        SwipeLeft.direction = .left
        SwipeRight.direction = .right
        
        self.CentreView.addGestureRecognizer(SwipeUp)
        self.CentreView.addGestureRecognizer(SwipeDown)
        self.CentreView.addGestureRecognizer(SwipeLeft)
        self.CentreView.addGestureRecognizer(SwipeRight)
        
        SwipeUp.addTarget(self, action: #selector(Swipe(sender:)))
        SwipeDown.addTarget(self, action: #selector(Swipe(sender:)))
        SwipeLeft.addTarget(self, action: #selector(Swipe(sender:)))
        SwipeRight.addTarget(self, action: #selector(Swipe(sender:)))
    }
    
    @objc func Swipe(sender: UISwipeGestureRecognizer)
    {
        switch sender.direction {
        case .up:
            DirectionLabel.text = "Direction Up"
            CentreView.backgroundColor = UIColor.green
        case .down:
            DirectionLabel.text = "Direction Down"
            CentreView.backgroundColor = UIColor.purple
        case .left:
            DirectionLabel.text = "Direction Left"
            CentreView.backgroundColor = UIColor.blue
        case .right:
            DirectionLabel.text = "Direction Right"
            CentreView.backgroundColor = UIColor.cyan
        default:
            DirectionLabel.text = ""
        }
    }

}
