//
//  main.swift
//  logger-cli
//
//  Created by 郭斌 on 2020/7/8.
//  Copyright © 2020 郭斌. All rights reserved.
//

import Foundation

let command = Command()
let stdin = FileHandle.standardInput
let input = NSString(data: stdin.availableData, encoding: String.Encoding.utf8.rawValue)

if input == "start" {
    print("app start...")
} else if input == "stop" {
    print("app will stop")
} else {
    print("unknown words")
}

print(input?.length as Any)
