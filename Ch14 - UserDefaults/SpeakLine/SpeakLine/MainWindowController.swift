//
//  MainWindowController.swift
//  SpeakLine
//
//  Created by XuYannis on 16/5/15.
//  Copyright © 2016年 YannisXu. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController, NSSpeechSynthesizerDelegate, NSWindowDelegate, NSTableViewDataSource, NSTableViewDelegate, NSTextFieldDelegate {
    
    override var windowNibName: String? {
        return "MainWindowController"
    }
    
    @IBOutlet weak var textField: NSTextField!
    @IBOutlet weak var speakButton: NSButton!
    @IBOutlet weak var stopButton: NSButton!
    @IBOutlet weak var tableView: NSTableView!
    
    let preferenceManager = PreferenceManager()
    
    let speechSynth = NSSpeechSynthesizer()
    let voices = NSSpeechSynthesizer.availableVoices()
    
    
    var isStarted: Bool = false {
        didSet {
            updateButtons()
        }
    }
    
    func speechSynthesizer(sender: NSSpeechSynthesizer, didFinishSpeaking finishedSpeaking: Bool) {
        isStarted = false
        print("finishedSpeaking = \(finishedSpeaking)")
    }
    
    func windowShouldClose(sender: AnyObject) -> Bool {
        return !isStarted
    }
    
    func numberOfRowsInTableView(tableView: NSTableView) -> Int {
        return voices.count
    }
    
    func tableView(tableView: NSTableView, objectValueForTableColumn tableColumn: NSTableColumn?, row: Int) -> AnyObject? {
        let voice = voices[row]
        let voiceName = voiceNameForIdentifier(voice)
        return voiceName
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()
        updateButtons()
        speechSynth.delegate = self
        for voice in voices {
            print(voiceNameForIdentifier(voice)!)
        }
        let defaultVoice = preferenceManager.activeVoice
        if let defaultRow = voices.indexOf(defaultVoice) {
            let indices = NSIndexSet(index: defaultRow)
            tableView.selectRowIndexes(indices, byExtendingSelection: false)
            tableView.scrollRowToVisible(defaultRow)
        }
        textField.stringValue = preferenceManager.activeText
    }
    
    @IBAction func speakIt(sender: NSButton) {
        let string = textField.stringValue
        if string.isEmpty {
            print("string from \(textField) is Empty")
        }
        else {
            print("string is \"\(textField.stringValue)\"")
            speechSynth.startSpeakingString(string)
            isStarted = true
        }
    }
    
    @IBAction func stopIt(sender: NSButton) {
        print("stop button clicked")
        speechSynth.stopSpeaking()
    }
    
    @IBAction func resetPreference(sender: NSButton) {
        print("rest")
        preferenceManager.resetPreference()
    }
    
    func updateButtons() {
        if isStarted {
            speakButton.enabled = false
            stopButton.enabled = true
        }
        else {
            speakButton.enabled = true
            stopButton.enabled = false
        }
    }
    
    func voiceNameForIdentifier(identifier: String) -> String? {
        let attributes = NSSpeechSynthesizer.attributesForVoice(identifier)
        return attributes[NSVoiceName] as? String
    }
    
    func tableViewSelectionDidChange(notification: NSNotification) {
        let row = tableView.selectedRow
        if row == -1 {
            speechSynth.setVoice(nil)
            return
        }
        let voice = voices[row]
        speechSynth.setVoice(voice)
        preferenceManager.activeVoice = voice
    }
    
    override func controlTextDidChange(notification: NSNotification) {
        preferenceManager.activeText = textField.stringValue
    }
    
}
