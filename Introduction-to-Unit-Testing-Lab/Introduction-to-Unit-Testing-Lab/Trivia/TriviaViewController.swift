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

        tableView.dataSource = self
        assignVar()
    }
    
    func assignVar() {
        questions = Trivia.getTriviaData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let TDVC = segue.destination as? TriviaDetailViewController, let indexPath = tableView.indexPathForSelectedRow else {
            fatalError("the segue is not correct please check ")
        }
        
        TDVC.selectedQuestion = questions[indexPath.row]
        
    }
    
}

extension TriviaViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "triviaCell", for: indexPath)
         
        let selectedQuestion = questions[indexPath.row]
        
        //cell.textLabel?.text = questions.question
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questions.count
    }

}

    //triviaCell
    



