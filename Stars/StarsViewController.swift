//
//  StarsViewController.swift
//  Stars
//
//  Created by Joshua Franklin on 8/20/19.
//  Copyright © 2019 AMSU. All rights reserved.
//

import UIKit

class StarsViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var distanceTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    let starController = StarController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    // Data Validation
    @IBAction func createStar(_ sender: UIButton) {
       guard let name = nameTextField.text,
        let distanceString = distanceTextField.text,
        !name.isEmpty,
        !distanceString.isEmpty,
        let distance = Double(distanceString) else {return}
        
        starController.createStar(named: name, withDistance: distance)
        nameTextField.text = ""
        distanceTextField.text = ""
        nameTextField.becomeFirstResponder()
        tableView.reloadData()
    }

    @IBAction func printStars(_ sender: UIButton) {
        
        
    }
}

extension StarsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return starController.stars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PlanetCell", for: indexPath) as? StarTableViewCell else {return UITableViewCell()}
        
        let star = starController.stars[indexPath.row]
        cell.star = star
        
        return cell
    }
}

extension StarsViewController: UITableViewDelegate {
    
}

