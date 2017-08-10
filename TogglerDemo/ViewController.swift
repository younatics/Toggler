//
//  ViewController.swift
//  TogglerDemo
//
//  Created by YiSeungyoun on 2017. 8. 6..
//  Copyright © 2017년 SeungyounYi. All rights reserved.
//

import UIKit
import Toggler

class ViewController: UIViewController {
    var toggler: Toggler!
    var toggler2: Toggler!
    
    @IBOutlet weak var button1: Button!
    @IBOutlet weak var button2: Button!
    @IBOutlet weak var button3: Button!
    @IBOutlet weak var button4: Button!
    @IBOutlet weak var button5: Button!
    
    @IBOutlet weak var button6: Button!
    @IBOutlet weak var button7: Button!
    @IBOutlet weak var button8: Button!
    @IBOutlet weak var button9: UIControl!
    @IBOutlet weak var button10: UIControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        toggler = Toggler(default: 0, togglers: [button1, button2, button3, button4, button5])
        button1.addTarget(self, action: #selector(buttonClicked(_:)), for: .touchUpInside)
        button1.tag = 0
        
        button2.addTarget(self, action: #selector(buttonClicked(_:)), for: .touchUpInside)
        button2.tag = 1

        button3.addTarget(self, action: #selector(buttonClicked(_:)), for: .touchUpInside)
        button3.tag = 2

        button4.addTarget(self, action: #selector(buttonClicked(_:)), for: .touchUpInside)
        button4.tag = 3

        button5.addTarget(self, action: #selector(buttonClicked(_:)), for: .touchUpInside)
        button5.tag = 4
        
        toggler2 = Toggler(default: 0, togglers: [button6, button7, button8, button9, button10])
        button6.addTarget(self, action: #selector(buttonClicked2(_:)), for: .touchUpInside)
        button7.addTarget(self, action: #selector(buttonClicked2(_:)), for: .touchUpInside)
        button8.addTarget(self, action: #selector(buttonClicked2(_:)), for: .touchUpInside)
        button9.addTarget(self, action: #selector(buttonClicked2(_:)), for: .touchUpInside)
        button10.addTarget(self, action: #selector(buttonClicked2(_:)), for: .touchUpInside)
    }
    
    func buttonClicked(_ sender: UIButton) {
        toggler.onAt(index: sender.tag)
    }

    func buttonClicked2(_ sender: UIButton) {
        toggler2.on(toggle: sender)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

