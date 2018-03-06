//
//  ViewController.swift
//  Color Slider
//
//  Created by FengYizhi on 2018/3/6.
//  Copyright © 2018年 FengYizhi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaLabel: UILabel!
    
    @IBOutlet weak var colorView: UIView!
    
    @IBAction func sliderChanged(_ sender: Any) {
        updateView()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSlider.value = 0.71
        greenSlider.value = 0.04
        blueSlider.value = 0.22
        alphaSlider.value = 1.0
        updateView()
    }
    
    func updateView() {
        print("Red: \(redSlider.value) Green: \(greenSlider.value) Blue: \(blueSlider.value) Alpha: \(alphaSlider.value)")
        
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        alphaLabel.text = String(format: "%.2f", alphaSlider.value)
        
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: CGFloat(alphaSlider.value))
    }
}

