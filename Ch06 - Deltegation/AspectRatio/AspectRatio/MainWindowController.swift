//
//  MainWindowController.swift
//  AspectRatio
//
//  Created by XuYannis on 16/5/14.
//  Copyright © 2016年 YannisXu. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController, NSWindowDelegate {

    
    override var windowNibName: String? {
        return "MainWindowController"
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()
    }
    
    
//    func windowDidResize(notification: NSNotification) {
//        print("did Resize")
//    }
    
    func windowWillResize(sender: NSWindow, toSize frameSize: NSSize) -> NSSize {
        let mySize = NSSize(width: frameSize.width, height: frameSize.width / 2)
        print("width is \(frameSize.width)")
        print("width is \(frameSize.width / 2)")
        return mySize
    }
    
}
