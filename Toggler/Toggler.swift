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
        
        self.togglers = togglers
        toggleControl(index: index, togglers: togglers)
    }
    
    open func on(index: Int) {
        toggleControl(index: index, togglers: togglers)
    }
    
    open func add(toggle: Any) {
        
    }
    
    private func toggleControl(index: Int, togglers: [Any]) {
        for toggle in togglers {
            toggleStatus(toggle: toggle, on: false)
        }
        toggleStatus(toggle: togglers[index], on: true)
    }
    
    private func toggleStatus(toggle: Any, on: Bool) {
        if let _toggle = toggle as? UIControl {
            if on {
                _toggle.isSelected = false
            } else {
                _toggle.isSelected = false
            }
        } else {
            fatalError("Not supported type")
        }
    }
}
