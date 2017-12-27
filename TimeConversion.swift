//
//  TimeConversion.swift
//  TemperatureConverter
//
//  Created by Milap Jhumkhawala on 04/08/16.
//  Copyright © 2016 Milap Jhumkhawala. All rights reserved.
//

import UIKit
import DropDown
import SnapKit

class TimeConversion: UIView {
    var slider = UISlider()
    var upperLabel = UILabel()
    var lowerLabel = UILabel()
    var dropDown1 = DropDown()
    var dropDown2 = DropDown()
    var button1 = UIButton()
    var button2 = UIButton()
    var button1Label = UILabel()
    var button2Label = UILabel()
    var r = Float(0.0)
    var arrow = "dropDownArrow.png"
    var dropArrow1 = UIImageView()
    var dropArrow2 = UIImageView()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup(){
        addSubview(slider)
        addSubview(upperLabel)
        addSubview(lowerLabel)
        addSubview(button1)
        addSubview(button2)
        addSubview(button1Label)
        addSubview(button2Label)
        addSubview(dropArrow1)
        addSubview(dropArrow2)
        slider.snp_makeConstraints { (make) -> Void in
            make.centerX.equalTo(0)
            make.centerY.equalTo(0)
            make.width.equalTo(250)
            make.height.equalTo(30)
        }
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.tintColor = UIColor.orangeColor()
        
        upperLabel.textAlignment = NSTextAlignment.Center
        upperLabel.text = "0.0"
        upperLabel.snp_makeConstraints { (make) ->  Void in
            make.centerX.equalTo(0)
            make.centerY.equalTo(-50)
            make.width.equalTo(50)
            make.height.equalTo(30)
        }
        
        lowerLabel.textAlignment = NSTextAlignment.Center
        lowerLabel.text = "0.0"
        lowerLabel.snp_makeConstraints { (make) -> Void in
            make.centerX.equalTo(0)
            make.centerY.equalTo(50)
            make.width.equalTo(100)
            make.height.equalTo(30)
        }
        button1.snp_makeConstraints { (make) -> Void in
            make.centerX.equalTo(0)
            make.centerY.equalTo(-90)
            make.width.equalTo(150)
            make.height.equalTo(30)
        }
        button1.layer.borderColor = UIColor.grayColor().CGColor
        button1.layer.borderWidth = 0.8
        button1.layer.cornerRadius = 5
        
        button2.snp_makeConstraints { (make) -> Void in
            make.centerX.equalTo(0)
            make.centerY.equalTo(90)
            make.width.equalTo(150)
            make.height.equalTo(30)
        }
        button2.layer.borderColor = UIColor.grayColor().CGColor
        button2.layer.borderWidth = 0.8
        button2.layer.cornerRadius = 5
        
        dropArrow1.snp_makeConstraints { (make) -> Void in
            make.centerX.equalTo(65)
            make.centerY.equalTo(-90)
            make.width.equalTo(10)
            make.height.equalTo(10)
        }
        dropArrow1.image = UIImage(named : arrow)
        
        dropArrow2.snp_makeConstraints { (make) -> Void in
            make.centerX.equalTo(65)
            make.centerY.equalTo(90)
            make.width.equalTo(10)
            make.height.equalTo(10)
        }
        dropArrow2.image = UIImage(named : arrow)
        
        
        button1Label.textAlignment = NSTextAlignment.Center
        button1Label.font = UIFont.systemFontOfSize(15)
        button1Label.text = "Select Input"
        button1Label.snp_makeConstraints { (make) -> Void in
            make.centerX.equalTo(0)
            make.centerY.equalTo(-90)
            make.width.equalTo(150)
            make.height.equalTo(30)
        }
        button2Label.textAlignment = NSTextAlignment.Center
        button2Label.font = UIFont.systemFontOfSize(15)
        button2Label.text = "Select Output"
        button2Label.snp_makeConstraints { (make) -> Void in
            make.centerX.equalTo(0)
            make.centerY.equalTo(90)
            make.width.equalTo(150)
            make.height.equalTo(30)
        }
        
        dropDown1.anchorView = button1
        dropDown2.anchorView = button2
        dropDown1.dataSource = ["Years", "Month", "Days", "Hours", "Minutes", "Seconds", "Miliseconds", "Microseconds", "Nanoseconds"]
        dropDown2.dataSource = ["Years", "Month", "Days", "Hours", "Minutes", "Seconds", "Miliseconds", "Microseconds", "Nanoseconds"]
        button1.addTarget(self,
                          action: #selector(TemperatureConversion.showList1),
                          forControlEvents: UIControlEvents.TouchUpInside
        )
        button2.addTarget(self,
                          action: #selector(TemperatureConversion.showList2),
                          forControlEvents: UIControlEvents.TouchUpInside)
        
        dropDown1.selectionAction = { [unowned self] (index: Int, item: String) in
            self.button1Label.text = item
            self.upperLabel.text = "0.0"
            self.lowerLabel.text = "0.0"
            self.slider.value = 0
        }
        dropDown2.selectionAction = { [unowned self] (index: Int, item: String) in
            self.button2Label.text = item
            self.upperLabel.text = "0.0"
            self.lowerLabel.text = "0.0"
            self.slider.value = 0
        }
        slider.addTarget(self,
                         action: #selector(TemperatureConversion.numberValueChanged(_:)),
                         forControlEvents: UIControlEvents.ValueChanged
        )
    }
    
    func showList1() {
        dropDown1.show()
        print("button clicked")
    }
    
    func showList2(){
        dropDown2.show()
        print("button clicked")
    }
    
        
}
    


    

