//
//  StartWarsDetailViewController.swift
//  Introduction-to-Unit-Testing-Lab
//
//  Created by Pursuit on 12/12/19.
//  Copyright © 2019 Pursuitful stuff. All rights reserved.
//

import UIKit

class StartWarsDetailViewController: UIViewController {
    
    @IBOutlet weak var openingCrawlLabel: UILabel!
    
    var selectedEpisode: Movie?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        openingCrawlLabel.text = selectedEpisode?.opening_crawl ?? "try again" 

    }
    
    

}
