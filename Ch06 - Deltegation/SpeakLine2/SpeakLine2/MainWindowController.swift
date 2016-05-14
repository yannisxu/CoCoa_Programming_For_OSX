//
//  MainWindowController.swift
//  SpeakLine2
//
//  Created by XuYannis on 16/5/12.
//  Copyright © 2016年 YannisXu. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController, NSSpeechSynthesizerDelegate, NSWindowDelegate {

    override var windowNibName: String? {
        return "MainWindowController"
    }

    @IBOutlet weak var textField: NSTextField!
    @IBOutlet weak var speakButton: NSButton!
    @IBOutlet weak var stopButton: NSButton!

    let speechSynth = NSSpeechSynthesizer()
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
    
    override func windowDidLoad() {
        super.windowDidLoad()
        updateButtons()
        speechSynth.delegate = self
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

}
