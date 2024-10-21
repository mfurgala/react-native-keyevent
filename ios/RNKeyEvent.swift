//
//  RNKeyEvent.swift
//  RNKeyEvent
//
//  Created by michal@shaperobotics.com on 01/10/2024.
//  Copyright © 2024 Facebook. All rights reserved.
//

import UIKit
@objc(RNKeyEvent)
class RNKeyEvent: RCTEventEmitter {
    static var instance:RNKeyEvent!
    override init(){
        super.init()
        RNKeyEvent.instance = self
    }

    var hasListener: Bool = false

    override func startObserving() {
      hasListener = true
    }

    override func stopObserving() {
       hasListener = false
     }

    @objc
    override func supportedEvents() -> [String]! {
      ["onKeyDown", "onKeyUp"]
    }

    @objc override static func requiresMainQueueSetup() -> Bool {
        return false

    }
    @objc func onKeyDown(keyEvent: [String: Any]) -> Void{
        sendEvent(withName: "onKeyDown", body: keyEvent)
        }
    @objc func onKeyUp(keyEvent: [String: Any]) -> Void {
        sendEvent(withName: "onKeyUp", body: keyEvent)
        }
}
