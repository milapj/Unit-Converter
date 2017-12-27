//
//  LengthConversion.swift
//  TemperatureConverter
//
//  Created by Milap Jhumkhawala on 04/08/16.
//  Copyright © 2016 Milap Jhumkhawala. All rights reserved.
//

import UIKit
import SnapKit

class LengthConversion: UIView {

    var length = UILabel()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup(){
        addSubview(length)
        length.text = "Length"
        length.textAlignment = NSTextAlignment.Center
        length.snp_makeConstraints { (make) -> Void in
            make.centerX.equalTo(0)
            make.centerY.equalTo(0)
            make.width.equalTo(100)
            make.height.equalTo(100)
        }
    }

}
