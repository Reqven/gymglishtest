//
//  TopRoundedImageView.swift
//  gymglishtest
//
//  Created by Manu on 28/06/2019.
//  Copyright © 2019 Manu Marchand. All rights reserved.
//

import UIKit

@IBDesignable class TopRoundedImageView: UIImageView {

    override func layoutSubviews() {
        super.layoutSubviews()
        roundCorners(corners: [.topLeft, .topRight], radius: 10)
    }

}
