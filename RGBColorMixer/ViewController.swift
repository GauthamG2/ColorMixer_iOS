//
//  ViewController.swift
//  RGBColorMixer
//
//  Created by Gautham Sritharan on 2021-01-29.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    
    @IBOutlet weak var lblRed: UILabel!
    @IBOutlet weak var lblGreen: UILabel!
    @IBOutlet weak var lblBlue: UILabel!
    
    @IBOutlet weak var sliderView: UIView!
    @IBOutlet weak var colorOutputImageView: UIImageView!
    
    @IBOutlet weak var lblRGB: UILabel!
    // MARK: - Variables
    var mixColor: Color?
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
       
        configUI()
    }
    
    //MARK: - ConfigUI
    func configUI() {
        
        sliderView.layer.cornerRadius = 10
        sliderView.layer.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        sliderView.layer.borderWidth = 5
        sliderView.layer.borderColor = mixColor?.getColor().cgColor
        
        colorOutputImageView.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        colorOutputImageView.layer.borderWidth = 5
        colorOutputImageView.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        colorOutputImageView.layer.cornerRadius = 20
        
        lblRed.text   = "0"
        lblGreen.text = "0"
        lblBlue.text  = "0"
        
        mixColor = Color(red: 0.0, green: 0.0, blue: 0.0)
        colorOutputImageView.backgroundColor = mixColor?.getColor()
        
        
        
    }
    
    //MARK: - Outlet action
    @IBAction func redValueChanged(_ sender: UISlider) {
        lblRed.text = String(format: "%.0f", sender.value)
        mixColor?.redValue = sender.value
        colorOutputImageView.backgroundColor = mixColor?.getColor()
        sliderView.layer.borderColor = mixColor?.getColor().cgColor
    }
    
    @IBAction func greenValueChanged(_ sender: UISlider) {
        lblGreen.text = String(format: "%.0f", sender.value)
        mixColor?.greenValue = sender.value
        colorOutputImageView.backgroundColor = mixColor?.getColor()
        sliderView.layer.borderColor = mixColor?.getColor().cgColor
    }
    @IBAction func blueValueChanged(_ sender: UISlider) {
        lblBlue.text = String(format: "%.0f", sender.value)
        mixColor?.blueValue = sender.value
        colorOutputImageView.backgroundColor = mixColor?.getColor()
        sliderView.layer.borderColor = mixColor?.getColor().cgColor
    }
}

