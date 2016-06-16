//
//  CarArrayController.swift
//  CarLot
//
//  Created by XuYannis on 16/6/15.
//  Copyright © 2016年 YannisXu. All rights reserved.
//

import Cocoa

class CarArrayController: NSArrayController {
    
    override func newObject() -> AnyObject {
        let newObje = super.newObject() as! NSObject
        let now = NSDate()
        newObje.setValue(now, forKey: "datePurchased")
        newObje.setValue(6, forKey: "condition")
        return newObje
    }
}
