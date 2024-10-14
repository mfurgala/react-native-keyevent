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
    @objc func onKeyDownListener(keyCode: String ) {
            sendEvent(withName: "keyDown", body: keyCode)
        }
    @objc func onKeyUpListener(keyCode: String) {
            sendEvent(withName: "keyUp", body: keyCode)
        }
}
