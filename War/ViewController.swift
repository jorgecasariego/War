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
    
    var arrayCartas:[String] = ["card1", "card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "card11", "card12", "card13",]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.playRoundButton.setTitle("Play", forState: UIControlState.Normal)
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
        
        
    }

}

