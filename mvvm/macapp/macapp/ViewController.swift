//
//  ViewController.swift
//  macapp
//
//  Created by 郭斌 on 2020/7/9.
//  Copyright © 2020 guobin. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        print("size: {width: \(view.frame.width), height: \(view.frame.height)}")

        // 设置button
        let btn = NSButton(title: "Button", target: nil, action: nil)
        btn.frame = NSRect(x: view.frame.width / 2 - 40, y: view.frame.height / 2 - 15, width: 80, height: 30)
        btn.bezelStyle = .rounded
        btn.setButtonType(.pushOnPushOff)
        btn.target = self
        btn.action = #selector(onClick)
        view.addSubview(btn)
    }

    @objc
    func onClick() {
        print("MacApp Button Click")
        handleClick()
    }

    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }
}
