import Foundation

//func multiplyByTwo(_ value: Int? = nil) -> Int {
//    if let value {
//        return value * 2
//    } else {
//        return 0
//    }
//}
//
//multiplyByTwo(nil)

let age: Int? = nil

if age != nil {
    "Age is there"
} else {
    "Age is nil"
}

//if let age {
//    "Age is there"
//} else {
//    "Not here"
//}

func checkAge() {
    if age == nil {
        "Age is nil"
        return
    }
    guard age != nil else {
        "Age is nil"
        return
    }
}
