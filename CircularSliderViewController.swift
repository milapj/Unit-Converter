//
//  CircularSliderViewController.swift
//  TemperatureConverter
//
//  Created by Milap Jhumkhawala on 06/08/16.
//  Copyright © 2016 Milap Jhumkhawala. All rights reserved.
//

import UIKit


class CircularSliderViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()

        // Do any additional setup after loading the view.
    }
    
    
    func setup(){
        let sliderFrame = CGRectMake(110, 150, 100, 100)
        let circularSlider = EFCircularSlider (frame: sliderFrame)
        self.view.addSubview(circularSlider)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}