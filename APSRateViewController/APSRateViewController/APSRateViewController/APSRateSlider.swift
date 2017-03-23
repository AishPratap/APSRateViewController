//
//  APSRateSlider.swift
//  APSRateViewController
//
//  Created by Aishwarya Pratap Singh on 3/22/17.
//  Copyright © 2017 Aishwarya Pratap Singh. All rights reserved.
//

import Foundation
import UIKit

class APSRateSlider: UISlider {
        
    override func trackRect(forBounds bounds: CGRect) -> CGRect {
        var newBounds = super.trackRect(forBounds: bounds)
        newBounds.size.height = 35
        return newBounds
    }
    
    func customizeSlider(){
        self.minimumValue = 0
        self.maximumValue = 5
//        self.setThumbImage(nil, for:.normal)
        self.thumbTintColor = UIColor.clear
    }
    
}
