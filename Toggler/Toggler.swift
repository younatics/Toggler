//
//  Toggler.swift
//  Toggler
//
//  Created by YiSeungyoun on 2017. 8. 6..
//  Copyright © 2017년 SeungyounYi. All rights reserved.
//

import Foundation

open class Toggler: NSObject {
    var togglers = [Any]()

    init(default index: Int, togglers: [Any]) {
        super.init()
        
        for toggle in togglers {
            toggleOff(toggle: toggle)
        }
        toggleOn(toggle: togglers[index])
    }
    
    private func toggleOff(toggle: Any) {
        if let _toggle = toggle as? UIButton {
            _toggle.isSelected = false
        } else if let _toggle = toggle as? UIControl {
            _toggle.isSelected = false
        } else {
            fatalError("Not supported type")
        }
    }
    
    private func toggleOn(toggle: Any) {
        if let _toggle = toggle as? UIButton {
            _toggle.isSelected = true
        } else if let _toggle = toggle as? UIControl {
            _toggle.isSelected = true
        } else {
            fatalError("Not supported type")
        }
    }

    
}
