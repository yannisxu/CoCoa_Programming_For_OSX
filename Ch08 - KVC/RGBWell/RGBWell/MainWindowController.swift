//
//  MainWindowController.swift
//  RGBWell
//
//  Created by XuYannis on 16/5/2.
//  Copyright © 2016年 YannisXu. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
    
    dynamic var r = 0.0
    dynamic var g = 0.0
    dynamic var b = 0.0
    let a = 1.0
    
    
    override func windowDidLoad() {
        super.windowDidLoad()
        updateColor()
    }
    
    @IBOutlet weak var colorWell: NSColorWell!
    
    override var windowNibName: String? {
        return "MainWindowController"
    }
    
    @IBAction func adjustRed(sender: NSSlider) {
        print("R slider's value is \(sender.doubleValue)")
        r = sender.doubleValue
        updateColor()
    }
    
    @IBAction func adjustGreen(sender: NSSlider) {
        print("G slider's value is \(sender.floatValue)")
        g = sender.doubleValue
        updateColor()
    }
    
    @IBAction func adjustBlue(sender: NSSlider) {
        print("B slider's value is \(sender.floatValue)")
        b = sender.doubleValue
        updateColor()
    }
    
    func updateColor(){
        let newColor = NSColor(calibratedRed: CGFloat(r), green: CGFloat(g), blue: CGFloat(b), alpha: CGFloat(a))
        colorWell.color = newColor
    }
}

