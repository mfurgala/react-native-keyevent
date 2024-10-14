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
            print(press, "press")
            guard let key = press.key else { continue }
            print(key.charactersIgnoringModifiers)
            keyEventClass.onKeyDownListener(keyCode: key.charactersIgnoringModifiers)
        }
    }
    override func pressesEnded(_ presses: Set<UIPress>, with event: UIPressesEvent?) {
        for press in presses {
            guard let key = press.key else { continue }
            print(key.charactersIgnoringModifiers)
            keyEventClass.onKeyUpListener(keyCode: key.charactersIgnoringModifiers)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("view controller loaded")
    }
    func testing(){
        NSLog("TEST CALL")
    }
}
