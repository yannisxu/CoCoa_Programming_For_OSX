//
//  MainWindowController.swift
//  BusyApp
//
//  Created by XuYannis on 16/5/4.
//  Copyright © 2016年 YannisXu. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
    
    @IBOutlet weak var textLabel: NSTextField!
    @IBOutlet weak var slider: NSSlider!
    
    override var windowNibName: String? {
        return "MainWindowController"
    }
    
    
    override func windowDidLoad() {
        super.windowDidLoad()
        slider.allowsTickMarkValuesOnly = true
    }
    
    @IBAction func changeTextSlider(sender: NSSlider){
        updateText(sender.doubleValue)
    }
    
    func updateText(size: Double){
        let newFont = NSFont(name: "Helvetica", size: CGFloat(size))
        if textLabel.font?.pointSize > newFont?.pointSize {
            textLabel.stringValue = "变小"
        }
        else if textLabel.font?.pointSize < newFont?.pointSize {
            textLabel.stringValue = "变大"
        }
        textLabel.font = newFont
    }
    
    @IBAction func setTickMark(sender: NSButton) {
        if sender.title == "关闭" {
            slider.numberOfTickMarks = 0
        }
        else if sender.title == "开启" {
            slider.numberOfTickMarks = 10
        }
    }
    
    @IBAction func setCheckBoxText(sender: NSButton) {
        if sender.state == 1 {
            sender.title = "不要选我"
        }
        else if sender.state == 0 {
            sender.title = "选我"
        }
    }
}
