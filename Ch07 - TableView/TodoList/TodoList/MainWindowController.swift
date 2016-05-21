//
//  MainWindowController.swift
//  TodoList
//
//  Created by XuYannis on 16/5/18.
//  Copyright © 2016年 YannisXu. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController, NSTableViewDataSource, NSTableViewDelegate {

    @IBOutlet weak var textTodo: NSTextField!
    @IBOutlet weak var tableTodo: NSTableView!
    var rowNumber: Int = 1
    var rowString: [String] = ["item 1"]
    
    override var windowNibName: String? {
        return "MainWindowController"
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()
    }
    
    func numberOfRowsInTableView(tableView: NSTableView) -> Int {
        return rowNumber
    }
    
    @IBAction func addToDoList(sender: AnyObject) {
        rowString.append(textTodo.stringValue)
        rowNumber += 1
        reloadTodoList()
    }
    
    func tableView(tableView: NSTableView, objectValueForTableColumn tableColumn: NSTableColumn?, row: Int) -> AnyObject? {
        let rowValue = rowString[row]
        return rowValue
    }
    
    func reloadTodoList() {
        tableTodo.reloadData()
    }
    
}
