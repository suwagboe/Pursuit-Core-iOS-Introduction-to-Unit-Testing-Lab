//
//  ViewController.swift
//  Introduction-to-Unit-Testing-Lab
//
//  Created by World Domination a Brand on 12/2/19.
//  Copyright © 2019 Pursuitful stuff. All rights reserved.
//

import UIKit

class JokeViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    private var jokes = [JokeData](){
        didSet {
            
            tableView.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        loadData()
    }
    // need to make a function to load the data
    func loadData() {
        jokes = JokeData.getJokes()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let JDVC = segue.destination as? JokesDetailViewController, let indexPath = tableView.indexPathForSelectedRow else {
            fatalError("the segue is not correct please check")
        }
        JDVC.seletedJoke = jokes[indexPath.row]
    }
    

}

extension JokeViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "jokeCell", for: indexPath)
        
        let selectedJokes = jokes[indexPath.row]
        
        cell.textLabel?.text = selectedJokes.setup
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return jokes.count
    }
    
}

