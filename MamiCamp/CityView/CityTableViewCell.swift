//
//  CityTableViewCell.swift
//  MamiCamp
//
//  Created by Vido Valianto on 3/8/19.
//  Copyright © 2019 Vido Valianto. All rights reserved.
//

import UIKit

class CityTableViewCell: UITableViewCell {
    let cities = ["Yogya","Bandung","Jakarta","Surabaya","Solo"]

    @IBOutlet weak var cityLbl: UILabel!
    @IBOutlet weak var cityImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
