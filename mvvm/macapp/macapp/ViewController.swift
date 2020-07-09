//
//  ViewController.swift
//  macapp
//
//  Created by 郭斌 on 2020/7/9.
//  Copyright © 2020 guobin. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    var isOpen: Bool = false
    var btnTitle: String = "开始录制"

    override func viewDidLoad() {
        super.viewDidLoad()

        print("size: {width: \(view.frame.width), height: \(view.frame.height)}")

        let center: CGFloat = view.frame.width / 2 - 60

        // 打开录音
        let openBtn = NSButton(title: "开始录制", target: self, action: nil)
        openBtn.frame = NSRect(x: center, y: 100, width: 120, height: 30)
        openBtn.bezelStyle = .rounded
        openBtn.setButtonType(.pushOnPushOff)
        openBtn.action = #selector(onOpenClick)
        view.addSubview(openBtn)
        
        // 关闭录音
        let closeBtn = NSButton(title: "停止录制", target: self, action: nil)
        closeBtn.frame = NSRect(x: center, y: 140, width: 120, height: 30)
        closeBtn.bezelStyle = .rounded
        closeBtn.setButtonType(.pushOnPushOff)
        closeBtn.action = #selector(onCloseClick)
        view.addSubview(closeBtn)

    }

    @objc
    func onCloseClick() {
        print("closeBtn Click")
        // call c function
        // handleClick()
    }

    @objc
    func onOpenClick() {
        if isOpen {
            btnTitle = "停止录制"
            isOpen = !isOpen
        }
        print("openBtn Click")
    }

    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }
}
