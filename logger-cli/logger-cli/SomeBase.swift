//
// Created by 郭斌 on 2020/7/8.
//

import Foundation

protocol Animal {
    var kind: String { get set }

    func run() -> Void
}

public class SomeBase: Animal {
    var kind: String = "SomeBase"

    func run() -> Void {
        print("\(kind) is running...")
    }
}

public class Dog: SomeBase {

    var kindDog: String

    override init() {
        self.kindDog = "Dog"
    }

    override func run() {
        super.run()
    }
}