//
//  TriviaViewController.swift
//  Introduction-to-Unit-Testing-Lab
//
//  Created by World Domination a Brand on 12/2/19.
//  Copyright © 2019 Pursuitful stuff. All rights reserved.
//

import UIKit

class TriviaViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private var questions = [TriviaInfo]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //tableView.dataSource = self
        
    }
    
   
    
}


    //triviaCell
    



