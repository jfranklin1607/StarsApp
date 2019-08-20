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

