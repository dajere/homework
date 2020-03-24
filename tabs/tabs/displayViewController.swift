//
//  displayViewController.swift
//  tabs
//
//  Created by dajere kyree newby on 3/19/20.
//  Copyright © 2020 dajere kyree newby. All rights reserved.
//

import UIKit

class displayViewController: UIViewController {
    @IBOutlet weak var sevenDeadlySinsVoteCounter: UILabel!
    
    
    @IBOutlet weak var myHeroVoteCounter: UILabel!
    
    @IBOutlet weak var beybladeVoteCounter: UILabel!
    
    
    @IBOutlet weak var narutoVoteCounter: UILabel!
    
    @IBOutlet weak var hxhVoteCounter: UILabel!
    
    @IBOutlet weak var pokemonVoteCounter: UILabel!
    
    @IBOutlet weak var joJoVoteCounter: UILabel!
    
    @IBOutlet weak var winner: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        sevenDeadlySinsVoteCounter.text = String((parent as! managementViewController).sevenDeadlySinsVote)
        myHeroVoteCounter.text = String((parent as! managementViewController).myHeroAcdemiaVote)
        beybladeVoteCounter.text = String((parent as!managementViewController).beybladeVote)
        narutoVoteCounter.text = String((parent as!managementViewController).narutoVote)
        hxhVoteCounter.text = String((parent as! managementViewController).hunterXHunterVote)
        
        pokemonVoteCounter.text = String((parent as! managementViewController).pokemonVote)
        joJoVoteCounter.text = String((parent as!managementViewController).joJoVote)
    

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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

}
