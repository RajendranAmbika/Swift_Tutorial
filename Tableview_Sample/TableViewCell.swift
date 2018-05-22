//
//  TableViewCell.swift
//  Tableview_Sample
//
//  Created by Rajendran Eshwaran on 5/22/18.
//  Copyright © 2018 RG Group of Industries. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var animalView: UIImageView!
    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var animalLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
