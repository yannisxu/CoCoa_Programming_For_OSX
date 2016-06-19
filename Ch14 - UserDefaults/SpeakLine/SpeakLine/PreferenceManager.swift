//
//  PreferenceManager.swift
//  SpeakLine
//
//  Created by XuYannis on 16/6/17.
//  Copyright © 2016年 YannisXu. All rights reserved.
//

import Cocoa

private let activeVoiceKey = "activeVoice"
private let activeTextKey = "activeText"

class PreferenceManager {
    
    private let userDefaults = NSUserDefaults.standardUserDefaults()
    
    func registerDefaultPreferences() {
        let defaults = [activeVoiceKey : NSSpeechSynthesizer.defaultVoice(), activeTextKey : "Able was I ere I saw Elba."]
        userDefaults.registerDefaults(defaults)
    }
    
    func resetPreference() {
        userDefaults.setObject(NSSpeechSynthesizer.defaultVoice(), forKey: activeVoiceKey)
        userDefaults.setObject("Able was I ere I saw Elba.", forKey: activeTextKey)
        print("i can reset")
    }
    
    init() {
        registerDefaultPreferences()
    }
    
    var activeVoice: String {
        set(newActiveVoice) {
            userDefaults.setObject(newActiveVoice, forKey: activeVoiceKey)
        }
        get {
            return (userDefaults.objectForKey(activeVoiceKey) as? String)!
        }
    }
    
    var activeText: String {
        set(newActiveText) {
            userDefaults.setObject(newActiveText, forKey: activeTextKey)
        }
        get {
            return (userDefaults.objectForKey(activeTextKey) as? String)!
        }
    }
}
