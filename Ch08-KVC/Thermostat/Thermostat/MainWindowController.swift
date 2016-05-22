//
//  MainWindowController.swift
//  Thermostat
//
//  Created by XuYannis on 16/5/22.
//  Copyright © 2016年 YannisXu. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {

//    dynamic var temperature = 68
    private var privateTemperature = 68
    dynamic var temperature: Int {
        set {
            print("set temperature to \(newValue)")
            privateTemperature = newValue
        }
        get {
            print("get temperature")
            return privateTemperature
        }
    }
    
    dynamic var isOn = true
    
    override var windowNibName: String? {
        return "MainWindowController"
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()
    }
    
    @IBAction func makeWarmer(sender: AnyObject) {
//        let newTemperate = temperature + 1
//        setValue(newTemperate, forKey: "temperature")
        willChangeValueForKey("temperature")
        temperature += 1
        didChangeValueForKey("temperature")
        
    }
    
    @IBAction func makeCooler(sender: AnyObject) {
//        let newTemperate = temperature - 1
//        setValue(newTemperate, forKey: "temperature")
        temperature -= 1
        
    }
    
    
    
    
}
