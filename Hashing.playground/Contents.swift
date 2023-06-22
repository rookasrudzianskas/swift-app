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

