import Foundation

struct Person: Equatable {
    let id: String
    let name: String
}

let foo1 = Person(id: "1", name: "Foo")
let foo2 = Person(id: "2", name: "Bar")


if foo1 == foo2 {
    "Yes"
} else {
    "Not"
}

extension Person {
    static func == (
        lhs: Self,
        rhs: Self
    ) -> Bool {
        lhs.id == rhs.id
    }
}

enum AnimalType {
    case dog(breed: String)
    case cat(breed: String)
}

let dog = AnimalType.dog(breed: "Something")
let whiskers = AnimalType.dog(breed: "None")

//extension AnimalType: Equatable {
//    static func == (
//        lhs: Self,
//        rhs: Self
//    ) -> Bool {
//        switch(lhs, rhs) {
//        case let (.dog(lhsBreed), .dog(rhsBreed)),
//            let (.cat(lhsBreed), .cat(rhsBreed)):
//            lhsBreed == rhsBreed
//        default:
//            return false
//        }
//    }
//}

struct Animal: Equatable {
    let name: String
    let type: AnimalType

//    static func == (
//        lhs: Self,
//        rhs: Self
//    ) -> Bool {
//        lhs.type == rhs.type
//    }
}

let cat1 = Animal(
    name: "Rokas",
    type: .cat(breed: "Street cat")
)

let cat2 = Animal(
    name: "Foo",
    type: .cat(breed: "Street cat")
)

if cat1 == cat2 {
    "The are same"
} else {
    "NOT"
}
