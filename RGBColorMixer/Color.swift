//
//  Color.swift
//  RGBColorMixer
//
//  Created by Gautham Sritharan on 2021-01-29.
//

import Foundation
import UIKit

class Color {
    
    var redValue:Float   = 0.0
    var greenValue:Float = 0.0
    var blueValue:Float  = 0.0
    
    init(red:Float, green:Float, blue:Float) {
        redValue = red
        greenValue = green
        blueValue = blue
    }
    
    func getColor() -> UIColor {
        let mixedColor = UIColor(
            red: CGFloat(redValue/255.0),
            green: CGFloat(greenValue/255.0),
            blue: CGFloat(blueValue/255.0),
            alpha: 1.0)
        return mixedColor
    }
}
