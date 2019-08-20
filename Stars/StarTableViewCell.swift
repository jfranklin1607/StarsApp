//
//  StarTableViewCell.swift
//  Stars
//
//  Created by Joshua Franklin on 8/20/19.
//  Copyright © 2019 AMSU. All rights reserved.
//

import UIKit

class StarTableViewCell: UITableViewCell {
    
    @IBOutlet weak var starNameLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    
    var star: Star? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let star = star else {return}
            
            starNameLabel.text = star.name
            distanceLabel.text = star.distanceDescription
        }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
