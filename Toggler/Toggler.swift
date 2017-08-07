//
//  Toggler.swift
//  Toggler
//
//  Created by YiSeungyoun on 2017. 8. 6..
//  Copyright © 2017년 SeungyounYi. All rights reserved.
//

import Foundation
import UIKit

public protocol Togglable: class {
    func selectedToggle(select: Bool)
}

extension UIButton: Togglable {
    public func selectedToggle(select: Bool) {
        self.isSelected = select
    }
}

extension UISwitch: Togglable {
    public func selectedToggle(select: Bool) {
        self.setOn(select, animated: true)
    }
}

open class Toggler: NSObject {
    var togglers = [Any]()

    public init(default index: Int, togglers: [Any]) {
        super.init()
        
        self.togglers = togglers
        toggleControl(index: index, togglers: togglers)
    }
    
    open func on(index: Int) {
        toggleControl(index: index, togglers: togglers)
    }
    
    open func add(toggle: Any) {
        self.togglers.append(toggle)
    }
    
    open func remove(at index: Int) {
        if index <= togglers.count {
            self.togglers.remove(at: index)
        } else {
            fatalError("Index is out of array")
        }
    }
    
    private func toggleControl(index: Int, togglers: [Any]) {
        for toggle in togglers {
            toggleStatus(toggle: toggle, on: false)
        }
        toggleStatus(toggle: togglers[index], on: true)
    }
    
    private func toggleStatus(toggle: Any, on: Bool) {
        if let _toggle = toggle as? Togglable {
            _toggle.selectedToggle(select: on)
        } else {
            fatalError("Not supported type")
        }
    }
}
