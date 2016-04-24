//
//  MainWindowController.swift
//  RandomPassword
//
//  Created by XuYannis on 16/4/24.
//  Copyright © 2016年 YannisXu. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {

    @IBOutlet weak var textField: NSTextField!
    
    override func windowDidLoad() {
        super.windowDidLoad()

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
    @IBAction func generatePassword(sender: AnyObject){
        //生成八位密码
        let length = 8
        let password = generateRandomString(length)
        
        textField.stringValue = password
    }
    
    
}
