import Cocoa

var str = "Hello, playground"
print(str)

let e = 2.14
var num = 10.0
print(e * num)

num = 100.0
print(e * num)

if e * num > 100 {
    print("the result > 100")
} else {
    print("the result <= 100")
}

var intNum: Int
var uintNum: UInt
var fNum: Float
var dNum: Double
var c: Character
var s: String
let charList: [Character] = ["C", "a", "t", "🐱"]

intNum = -10
uintNum = 10
fNum = 1.1
dNum = 1.3
c = "c"
s = """
  多行字符串: num = \(num)
"""

print(charList)
print(s)


//for c in charList {
//    print(c)
//}
//
//for c in s {
//    print(c)
//}

let index = s.index(s.startIndex, offsetBy: 3)
print(index)
print(s[index])
