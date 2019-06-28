//
//  RoundedShadowView.swift
//  gymglishtest
//
//  Created by Manu on 28/06/2019.
//  Copyright © 2019 Manu Marchand. All rights reserved.
//

import UIKit

@IBDesignable class RoundedShadowView: UIView {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 0)
        layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: 0).cgPath
        layer.shadowOpacity = 0.15
        layer.shadowRadius = 6
        
        layer.shouldRasterize = true
        layer.rasterizationScale = UIScreen.main.scale
    }

}
