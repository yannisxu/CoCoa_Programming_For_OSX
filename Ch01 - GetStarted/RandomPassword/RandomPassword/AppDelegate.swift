//
//  AppDelegate.swift
//  RandomPassword
//
//  Created by XuYannis on 16/4/24.
//  Copyright © 2016年 YannisXu. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    var mainWindowController:MainWindowController?
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        
        //创建一个 Window Controller 和 XIB 文件同名
        let mainWindowController = MainWindowController(windowNibName: "MainWindowController")
        
        //展示这个window
        mainWindowController.showWindow(self)
        
        self.mainWindowController = mainWindowController
        
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

