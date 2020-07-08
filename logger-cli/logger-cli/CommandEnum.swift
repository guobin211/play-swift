//
// Created by 郭斌 on 2020/7/8.
// Copyright (c) 2020. All rights reserved.
//

public class Command {
    var currentState: CommandEnum

    init() {
        currentState = CommandEnum.wait
        print("Command init, please input `start` to run app")
    }

    public func run(cmd: CommandEnum = CommandEnum.start) -> Void {
        switch cmd {
        case .start:
            print("run start")
        case .stop:
            print("run stop")
        case .wait:
            print("run wait")
        }
    }
}

public enum CommandEnum {
    case start
    case stop
    case wait
}
