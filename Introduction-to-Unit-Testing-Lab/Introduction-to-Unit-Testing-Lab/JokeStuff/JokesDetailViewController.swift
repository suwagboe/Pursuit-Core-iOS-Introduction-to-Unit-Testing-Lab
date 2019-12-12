//
//  JokesDetailViewController.swift
//  Introduction-to-Unit-Testing-Lab
//
//  Created by Pursuit on 12/12/19.
//  Copyright © 2019 Pursuitful stuff. All rights reserved.
//

import UIKit

class JokesDetailViewController: UIViewController {

    @IBOutlet weak var setUpLabel: UILabel!
    @IBOutlet weak var punchLineLabel: UILabel!
    
    var seletedJoke: JokeData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureCell()

    }
    
    func configureCell() {
        
        guard let joke = seletedJoke else {
            print("the segue is not correct...")
            return
        }
        
        setUpLabel.text = joke.setup
        
        punchLineLabel.text = joke.punchline
        
        
        
    }

 

}
