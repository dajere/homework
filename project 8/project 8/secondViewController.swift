//
//  secondViewController.swift
//  project 8
//
//  Created by dajere kyree newby on 5/4/20.
//  Copyright © 2020 dajere kyree newby. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {

    @IBOutlet weak var directionLabel: UILabel!
   
    @IBOutlet weak var CentreView: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        CentreView.layer.masksToBounds = true
        CentreView .layer.cornerRadius = 16
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func swipeGesture(_ sender: UISwipeGestureRecognizer) {
        switch sender.direction {
        case .up:
            directionLabel.text = "direction up"
            CentreView.backgroundColor = UIColor.green
        case .down:
            directionLabel.text = "direction down"
            CentreView.backgroundColor = UIColor.purple
        case .left:
            directionLabel.text = "direction left"
            CentreView.backgroundColor = UIColor.blue
        case .right:
            directionLabel.text = "direction right"
            CentreView.backgroundColor = UIColor.cyan
        default:
            directionLabel.text = ""

        }
    }
    
}
