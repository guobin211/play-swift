import Cocoa

var str = "Hello, playground"
var status: Bool = true

for index in str.indices {
    // index: Index(_rawBits: 1), value: H
    if status {
        print("index: \(index), value: \(str[index])")
        status = false
    }
    
}

str.insert(contentsOf: " 2020", at: str.endIndex)
print(str)

let insertIndex = str.firstIndex(of: "2")

if insertIndex != nil {
    // assert insertIndex != nil
    str.insert(contentsOf: "Swift ", at: insertIndex ?? str.endIndex)
}

print(str)

class Person {
    public static func == (lhs: Person, rhs: Person) -> Bool {
        return true
    }
}

let a: Person = Person()
let b: Person = Person()

if a == b {
    print("a == b")
}

