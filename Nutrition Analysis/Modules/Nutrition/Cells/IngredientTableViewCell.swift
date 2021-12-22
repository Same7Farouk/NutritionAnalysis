//
//  IngredientTableViewCell.swift
//  Nutrition Analysis
//
//  Created by Sameh Farouk on 22/12/2021.
//

import UIKit

class IngredientTableViewCell: UITableViewCell {
    
    @IBOutlet weak var labelTitle: UILabel!
    
    func configure(with ingredient:String) {
        labelTitle.text = ingredient
    }
}
