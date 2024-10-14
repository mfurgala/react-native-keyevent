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
    @objc public func someFunction() {
           // Your function implementation
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
      ["onKeyDownListener", "onKeyUpListener"]
    }
//
//    @objc func onKeyDown(keyCode: String ) {
//            sendEvent(withName: "keyDown", body: keyCode)
//        }
//    @objc func onKeyUp(keyCode: String) {
//            sendEvent(withName: "keyUp", body: keyCode)
//        }
}
