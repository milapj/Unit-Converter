//
//  3DTouch.swift
//  TemperatureConverter
//
//  Created by Milap Jhumkhawala on 28/07/16.
//  Copyright © 2016 Milap Jhumkhawala. All rights reserved.
//

import UIKit

class _DTouch: UIView {

    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    
    
    }
    func setup(){
        let existingShortcutItems = UIApplication.sharedApplication().shortcutItems ?? []
        let anExistingShortcutItem = existingShortcutItems[anIndex]
        var updatedShortcutItems = existingShortcutItems
        let aMutableShortcutItem = anExistingShortcutItem.mutableCopy() as! UIMutableApplicationShortcutItem
        aMutableShortcutItem.localizedTitle = “New Title"
        updatedShortcutItems[anIndex] = aMutableShortcutItem
        UIApplication.sharedApplication().shortcutItems = updatedShortcutItems
    }
    
}
