//
//  pollViewController.swift
//  tabs
//
//  Created by dajere kyree newby on 3/19/20.
//  Copyright © 2020 dajere kyree newby. All rights reserved.
//

import UIKit

class pollViewController: UIViewController {

    @IBAction func voteSevenDeadlySinsVote(_ sender: Any) {
        (parent as! managementViewController).sevenDeadlySinsVote+=1
    }
    
    @IBAction func voteMyHeroAcdemiaVote(_ sender: Any) {
        (parent as! managementViewController).myHeroAcdemiaVote+=1
    }
    
    @IBAction func voteBeyblade(_ sender: Any) {
        (parent as! managementViewController).beybladeVote+=1
    }
    
    @IBAction func voteNaruto(_ sender: Any) {
        (parent as! managementViewController).narutoVote+=1
    }
    
    @IBAction func voteHunterXHunter(_ sender: Any) {
        (parent as! managementViewController).hunterXHunterVote+=1
    }
    
    @IBAction func votePokemon(_ sender: Any) {
        (parent as! managementViewController).pokemonVote+=1
    }
    
    @IBAction func voteJoJo(_ sender: Any) {
        (parent as! managementViewController).joJoVote+=1
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
