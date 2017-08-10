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
        toggleControl(toggle: togglers[index], togglers: togglers)
    }
    
    public func on(toggle: Togglable) {
        toggleControl(toggle: toggle, togglers: togglers)
    }
    
    public func onAt(index: Int) {
        toggleControl(toggle: togglers[index], togglers: togglers)
    }
    
    public mutating func add(toggle: Togglable) {
        togglers.append(toggle)
    }
    
    public mutating func remove(at index: Int) {
        guard index < togglers.count else {
            fatalError("Index is out of array")
        }
        togglers.remove(at: index)
    }
    
    private func toggleControl(toggle: Togglable, togglers: [Togglable]) {
        togglers.enumerated().forEach {
            toggleStatus(toggle: $0.element, on: $0.element === toggle)
        }
    }
    
    private func toggleStatus(toggle: Togglable, on: Bool) {
        toggle.selectedToggle(select: on)
    }
}
