//
//  GradientView.swift
//  Smack
//
//  Created by Matthias Plancke on 09/04/2020.
//  Copyright © 2020 Matthias Plancke. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {

    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.4392156863, green: 0.7960784314, blue: 0.9568627451, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.7607843137, green: 0.9019607843, blue: 0.9803921569, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        gradientLayer.startPoint =  CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
    }

}
