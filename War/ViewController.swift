//
//  ViewController.swift
//  War
//
//  Created by Jorge Casariego on 13/10/14.
//  Copyright (c) 2014 Jorge Casariego. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var seconfCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    
    @IBOutlet weak var playerScore: UILabel!
    @IBOutlet weak var enemyScore: UILabel!
    
    
    var arrayCartas:[String] = ["card1", "card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "card11", "card12", "card13",]
    
    var playerScoreTotal = 0
    var enemyScoreTotal = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //self.playRoundButton.setTitle("Play", forState: UIControlState.Normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: UIButton) {
        
        //Obteniendo numeros aleatorios
        var carta1:Int = Int(arc4random_uniform(13))
        var carta2:Int = Int(arc4random_uniform(13))
        
        //Seteando cartas aleatoriamente
        self.firstCardImageView.image = UIImage(named: arrayCartas[carta1])
        self.seconfCardImageView.image = UIImage(named: arrayCartas[carta2])
        
        // Determine the higher card
        if carta1 > carta2 {
            // First card is larger
            playerScoreTotal += 1
            self.playerScore.text = String(playerScoreTotal)
            
        } else if carta1 == carta2{
            
        } else{
            //  Second card is larger
            enemyScoreTotal += 1
            self.enemyScore.text = String(enemyScoreTotal)
        }
        
        
    }

}

