import Cocoa

let yetAnotherPoint = (1, -1)

switch yetAnotherPoint {
case let (x, y) where y == x:
    print("(\(x), \(y)) is on the line y == x")

case let (x, y) where y == -x:
    print("y = -x")

default:
    print("default case")
}

let someCharacter: Character = "e"
switch someCharacter {
case "a", "e", "i", "o", "u":
    print("\(someCharacter) is a vowel")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
     "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    print("\(someCharacter) is a consonant")
default:
    print("\(someCharacter) is not a vowel or a consonant")
}
