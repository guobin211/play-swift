import Cocoa

var isFirst = true
var arr1: [Int] = [Int]()
var arr2 = Array(repeating: 0, count: 3)
print(arr1)
print(arr2)

arr1.append(10)
print(arr1)
arr2[2] = arr1[0]
print(arr2)
arr1.remove(at: 0)
print(arr2)

var students: [String] = []
// index 0 - 9
for i in 0...9 {
    students.append("第\(i + 1)个")
}
print(students)
let subStudents = students[0...3]
print(subStudents)

for el in subStudents {
    print(el)
}

for (index, value) in students.enumerated() {
    if isFirst {
        print("index: \(index), value: \(value)")
        isFirst = false
    }
}

students.swapAt(0, 1)
print(students[0])


var lessions: Set<String> = []
lessions.insert("Tom")
lessions.insert("Jack")
lessions.insert("Tom")
print(lessions)

for name in lessions {
    print("name is \(name)")
}

var map: [String: String] = [:]
print(map)
map["name"] = "jack"
print(map)

