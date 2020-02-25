//
//  ViewController.swift
//  homework3
//
//  Created by dajere kyree newby on 2/24/20.
//  Copyright © 2020 dajere kyree newby. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var background: UIImageView!
    
    @IBOutlet weak var hideBackground: UIButton!
    
    @IBOutlet weak var playAndPlay: UIButton!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var bunnyView: UIImageView!
    
    @IBAction func slider(_ sender: Any) {
        bunnyView.animationDuration=TimeInterval(3.0-slider.value)
        bunnyView.startAnimating()
    
    
    }
    
    @IBAction func playAndPause(_ sender: Any) {
    
        if(bunnyView.isAnimating)
        {
            bunnyView.stopAnimating()
            
        }else
        {bunnyView.startAnimating()
            
        }
    }
    
    
   
    @IBAction func hideBackground(_ sender: Any) {
        if(background.isHidden)
        {
            background.isHidden=false
        }else{
            background.isHidden=true
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let hopAnimation: [UIImage] = [
        UIImage(named:"frame-1")!,
        UIImage(named:"frame-2")!,
        UIImage(named:"frame-3")!,
        UIImage(named:"frame-4")!,
        UIImage(named:"frame-5")!,
        UIImage(named:"frame-6")!,
        UIImage(named:"frame-7")!,
        UIImage(named:"frame-18")!,
        UIImage(named:"frame-19")!,
        UIImage(named:"frame-20")!,
        ]
        bunnyView.animationImages=hopAnimation
        bunnyView.animationDuration=1.0
        }

}
