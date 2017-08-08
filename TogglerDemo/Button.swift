//
//  Button.swift
//  Toggler
//
//  Created by YiSeungyoun on 2017. 8. 6..
//  Copyright © 2017년 SeungyounYi. All rights reserved.
//

import UIKit

class Button: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override var isSelected: Bool {
        didSet {
            if isSelected {
                changed()
            } else {
                normal()
            }
        }
    }
    
    func changed() {
        self.setTitle("Selected", for: .normal)
        self.backgroundColor = UIColor.lightGray
    }
    
    func normal() {
        self.setTitle("Normal", for: .normal)
        self.backgroundColor = UIColor.white
    }

}
