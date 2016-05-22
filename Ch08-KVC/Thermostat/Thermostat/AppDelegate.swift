//
//  AppDelegate.swift
//  Thermostat
//
//  Created by XuYannis on 16/5/22.
//  Copyright © 2016年 YannisXu. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var mainWindowController: MainWindowController?
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        
        //create a window controller
        let mainWindowController = MainWindowController()
        //Put the window of the window controller on screen
        mainWindowController.showWindow(self)
        //Set the property to point to the window controller
        self.mainWindowController = mainWindowController
        
    }


    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

