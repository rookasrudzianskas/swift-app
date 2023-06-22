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

//struct Animal: Equatable {
//    let name: String
//    let type: AnimalType
//
////    static func == (
////        lhs: Self,
////        rhs: Self
////    ) -> Bool {
////        lhs.type == rhs.type
////    }
//}

//let cat1 = Animal(
//    name: "Rokas",
//    type: .cat(breed: "Street cat")
//)
//
//let cat2 = Animal(
//    name: "Foo",
//    type: .cat(breed: "Street cat")
//)
//
//if cat1 == cat2 {
//    "The are same"
//} else {
//    "NOT"
//}

struct House: Hashable {
    let number: Int
    let numberOfBedrooms: Int
}

let house1 = House(number: 343, numberOfBedrooms: 332)

let house2 = House(number: 2, numberOfBedrooms: 2)

house2.hashValue

let houses = Set([house1, house2])

houses.count

struct NumberedHouse: Hashable {
    let number: Int
    let numberOfBedrooms: Int
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(number)
    }
    
    static func == (
        lhs: Self,
        rhs: Self
    ) -> Bool {
        lhs.number == rhs.number
    }
}

let house3 = NumberedHouse(number: 2, numberOfBedrooms: 123)

let house4 = NumberedHouse(number: 3, numberOfBedrooms: 123)

let houses3And4 = Set([house3, house4])

enum CarPart {
    case roof
    case tire
    case trunk
}

let uniqueParts: Set<CarPart> = [
    .roof,
    .tire,
    .roof,
    .trunk
]

enum HouseType: Hashable {
    case bigHouse(NumberedHouse)
    case smallHouse(NumberedHouse)
}

let bigHouse1 = HouseType( .bigHouse(NumberedHouse(number: 1, numberOfBedrooms: 2)))
let bigHouse2 = HouseType( .bigHouse(NumberedHouse(number: 3, numberOfBedrooms: 5)))
let smallHouse1 = HouseType( .smallHouse(NumberedHouse(number: 1, numberOfBedrooms: 1)))
