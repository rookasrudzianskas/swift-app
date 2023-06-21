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
    guard age != nil else {
        "Age is nil"
        return
    }
    "Age is not nil"
}

checkAge()

let age2: Int? = 0
func checkAge2() {
    guard let age2 = age2 else {
        "Age is nil"
        return
    }
    "Age is not nill."
}

checkAge2()

switch age {
case .none:
    "Age has no value"
case let .some(value):
    "Age has the value of soemthing"
}

if age2 == 0 {
    "Age2 is 0 as expected, and is not nul"
} else {
    "Age is not 0, how strange?"
}


if age2 == .some(0) {
    "Age2 is 0 as expected, and is not nul"
} else {
    "Age is not 0, how strange?"
}

struct Person {
    let name: String
    let address: Address?
    struct Address {
        let firstLine: String?
    }
}

let foo: Person = Person(name: "Foo", address: nil)

if let fooFirstAddressLine = foo.address?.firstLine {
    fooFirstAddressLine
} else {
    "No nothing"
}


if let fooAddress = foo.address,
   let firstLine = fooAddress.firstLine {
    fooAddress
    firstLine
}

let bar: Person? = Person(
    name: "Bar",
    address: Person.Address(
        firstLine: nil)
)


if bar?.name == "Bar",
   bar?.address?.firstLine == nil {
    "Bar is not first line"
} else {
    "Something is not working"
}

let baz: Person? = Person(
    name: "Baz",
    address: Person.Address (
        firstLine: "Baz first ine"
    )
)


switch baz?.address?.firstLine {
    case let .some(firstLine) where firstLine.starts(with: "Baz"):
        "Baz first line"
    case let .some(firstLine):
        "Does not match"
        firstLine
    case .none:
        "Nil"
}

func getFullName(firstName: String, lastName: String) -> String? {
    if let lastName {
        return "first name lastName"
    } else {
        return nil
    }
}

getFullName(firstName: "Rokas", lastName: "RUdzianskas")
