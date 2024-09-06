//
//  ViewController.swift
//  Question15
//
//  Created by Abouzar Moradian on 9/6/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var projects = [Launch]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        projects.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let customCell = tableView.dequeueReusableCell(withIdentifier: LaunchCellTableViewCell.identifier, for: indexPath) as? LaunchCellTableViewCell
        
        guard let cell = customCell else { return UITableViewCell()}
        
        cell.titleLabel.text  =  projects[indexPath.row].title
        cell.descriptLabel.text  =  projects[indexPath.row].description
        cell.statusLabel.text  =  projects[indexPath.row].status.rawValue


        return cell
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    let nib = UINib(nibName: LaunchCellTableViewCell.identifier, bundle: nil)
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.register(nib, forCellReuseIdentifier: LaunchCellTableViewCell.identifier)
        
        let launch1 = Launch(title: "Falcon 1", description: "Cool Project", status: .success)
        let launch2 = Launch(title: "Falcon 2", description: "Ambitious Project", status: .success)
        let launch3 = Launch(title: "Falcon 3", description: "Wonderful Project", status: .failure)
        projects = [launch1, launch2, launch3]
        


        
        
        
        
    }


}

