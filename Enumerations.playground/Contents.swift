import Foundation

enum Animals {
    case cat, dog, rabbit,
         hedgeHog
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
case .rabbit:
    break
case .hedgeHog:
    "This is a hedgedog"
    break
}
func describeAnimal(_ animal: Animals) {

}

describeAnimal(Animals.rabbit)

//func == (
//    lhs: Animals,
//    rhs: Int
//) -> Bool {
//    lhs == .cat && rhs == 3
//}
