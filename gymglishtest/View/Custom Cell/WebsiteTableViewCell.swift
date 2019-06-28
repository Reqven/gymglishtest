//
//  WebsiteTableViewCell.swift
//  gymglishtest
//
//  Created by Manu on 28/06/2019.
//  Copyright © 2019 Manu Marchand. All rights reserved.
//

import UIKit

class WebsiteTableViewCell: UITableViewCell {

    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        selectionStyle = .none
        cardView.layer.cornerRadius = 10
        backgroundImageView.roundCorners(corners: [.topLeft, .topRight], radius: 10)
    }
    
}
