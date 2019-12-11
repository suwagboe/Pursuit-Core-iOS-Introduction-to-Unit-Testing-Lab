//
//  StarWarsViewController.swift
//  Introduction-to-Unit-Testing-Lab
//
//  Created by World Domination a Brand on 12/2/19.
//  Copyright © 2019 Pursuitful stuff. All rights reserved.
//

import UIKit

class StarWarsViewController: UIViewController {
    
    @IBOutlet weak var tableview: UITableView!
    
    /*
    var Amovie = [Movie]() {
        didSet {
           // loadData()
        }
    }
   */

    override func viewDidLoad() {
        super.viewDidLoad()
        //loadData()
    }
    
    /*
     func loadData() {
     Amovie = StarWarsInfo.movie
     }
     */
    

}

extension StarWarsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0 //Amovie.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "starWarsCell", for: indexPath)
        
       // cell.textLabel?.text = Amovie.
        
        return cell
        
    }
    
}
