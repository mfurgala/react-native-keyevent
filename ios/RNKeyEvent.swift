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
    
    @objc func onKeyDown(_ event: UIKeyboardEvent) {
            sendEvent(name: "keyDown", body: event.keyCode.rawValue)
        }
        @objc func onKeyUp(_ event: UIKeyboardEvent) {
            sendEvent(name: "keyUp", body: event.keyCode.rawValue)
        }
}
