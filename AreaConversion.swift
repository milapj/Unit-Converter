//
//  AreaConversion.swift
//  TemperatureConverter
//
//  Created by Milap Jhumkhawala on 04/08/16.
//  Copyright © 2016 Milap Jhumkhawala. All rights reserved.
//

import UIKit
import SnapKit

class AreaConversion: UIView {
    
    var area = UILabel()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup(){
        addSubview(area)
        area.text = "Area"
        area.textAlignment = NSTextAlignment.Center
        area.snp_makeConstraints { (make) -> Void in
            make.centerX.equalTo(0)
            make.centerY.equalTo(0)
            make.width.equalTo(100)
            make.height.equalTo(100)
        }
    }
}
