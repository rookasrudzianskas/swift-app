import Foundation

enum Animals {
    case cat, dog, rabbit
}

let cat = Animals.cat
cat

if cat == Animals.cat {
    "This is a cat"
} else if cat == Animals.dog {
    "This is a dog"
} else {
    "This is something else"
}

switch cat {
case .cat:
    "This is cat"
    break
case .dog:
    "This is a dog"
    break
default:
    "This is soemthing else"
}

//func == (
//    lhs: Animals,
//    rhs: Int
//) -> Bool {
//    lhs == .cat && rhs == 3
//}
