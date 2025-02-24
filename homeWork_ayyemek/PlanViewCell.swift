//
//  PlanViewCell.swift
//  homeWork_ayyemek
//
//  Created by User on 19.02.25.
//

import Foundation
import UIKit

class PlanViewCell : UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var subtitleLabel: UILabel!
    
    @IBOutlet weak var imageSelect: UIImageView!
    
    override func awakeFromNib() {
            super.awakeFromNib()
            imageSelect.isHidden = true
        }

        func configure(with model: PlanModel) {
            titleLabel.text = model.titleName
            subtitleLabel.text = model.subtitleName
            imageSelect.image = UIImage(named: model.imageName)
        }
        
        func toggleImageVisibility() {
            imageSelect.isHidden.toggle()  
        }
}
