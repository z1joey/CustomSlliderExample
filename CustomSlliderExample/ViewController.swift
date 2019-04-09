//
//  ViewController.swift
//  CustomSlliderExample
//
//  Created by Yi Zhang on 2019/4/9.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let rangeSlider = RangeSlider(frame: CGRect.zero)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        rangeSlider.backgroundColor = UIColor.red
        view.addSubview(rangeSlider)
        print("view did load")
        
        rangeSlider.addTarget(self, action: #selector(rangeSliderValueChanged(rangeSlider:)), for: .valueChanged)
       
    }
    
    override func viewDidLayoutSubviews() {
        let margin: CGFloat = 20.0;
        let width = view.bounds.width - 2.0 * margin
        rangeSlider.frame = CGRect(x: margin, y: margin + 44, width: width, height: 31.0)
        print("view did layout subviews")
    }
    
    @objc func rangeSliderValueChanged(rangeSlider: RangeSlider) {
        print("value changed: \(rangeSlider.lowerValue)")
    }
}

