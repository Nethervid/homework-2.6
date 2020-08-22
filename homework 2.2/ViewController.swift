//
//  ViewController.swift
//  homework 2.2
//
//  Created by Артем on 22.08.2020.
//  Copyright © 2020 Artem Golubev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redIndicatorLabel: UILabel!
    @IBOutlet weak var greenIndicatorLabel: UILabel!
    @IBOutlet weak var blueIndicatorLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    

    // MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 10
        
        setViewColor()
    }
    
    // MARK: - IB Actions
    @IBAction func colorChanged() {
        setViewColor()
    }
    
    // MARK: - Private Methods
    private func setViewColor() {
        let red   = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue  = CGFloat(blueSlider.value)
        
        let currentColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        
        colorView.backgroundColor = currentColor
        updateIndicatorLabels()
    }
    
    private func updateIndicatorLabels() {
        redIndicatorLabel.text   = String(format: "%.2f", redSlider.value)
        greenIndicatorLabel.text = String(format: "%.2f", greenSlider.value)
        blueIndicatorLabel.text  = String(format: "%.2f", blueSlider.value)
    }
}

