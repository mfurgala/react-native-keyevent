//
//  RNKeyListener.swift
//  RNKeyEvent
//
//  Created by michal@shaperobotics.com on 01/10/2024.
//  Copyright © 2024 Facebook. All rights reserved.
//

@objc(RNKeyListener)
class RNKeyListener: UIViewController {
    let keyEventClass = RNKeyEvent();
    override func pressesBegan(_ presses: Set<UIPress>,  with event: UIPressesEvent?) {
        for press in presses {
            guard let key = press.key else { continue }
            keyEventClass.sendEvent(withName: "keyUp", body: key)
        }

    }
    override func pressesEnded(_ presses: Set<UIPress>, with event: UIPressesEvent?) {
        for press in presses {
            guard let key = press.key else { continue }
//            keyEventClass.sendEvent(withName: "keyDown", body: key)
        }
    }
}
