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

extension UIControl: Togglable {
    public func selectedToggle(select: Bool) {
        isSelected = select
    }
}

extension UISwitch {
    public override func selectedToggle(select: Bool) {
        setOn(select, animated: true)
    }
}

public struct Toggler {
    var togglers = [Togglable]()
    
    public init(default index: Int = 0, togglers: [Togglable]) {
        self.togglers = togglers
        toggleControl(at: index, togglers: togglers)
    }
    
    open func on(index: Int) {
        toggleControl(index: index, togglers: togglers)
    }
    
    public mutating func add(toggle: Togglable) {
        togglers.append(toggle)
    }
    
    open func remove(at index: Int) {
        if index <= togglers.count {
            self.togglers.remove(at: index)
        } else {
            fatalError("Index is out of array")
        }
    }
    
        for toggle in togglers {
            toggleStatus(toggle: toggle, on: false)
    private func toggleControl(at index: Int, togglers: [Togglable]) {
        }
        toggleStatus(toggle: togglers[index], on: true)
    }
    
    private func toggleStatus(toggle: Togglable, on: Bool) {
        toggle.selectedToggle(select: on)
    }
}
