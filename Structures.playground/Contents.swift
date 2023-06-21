import Foundation

struct Person {
    let name: String
    let age: Int
}

let foo = Person(name: "Foo", age: 20)

foo.name
foo.age

struct CommodoreComputer {
    let name: String
    let manufacturer = "Commodore"
//    init(name: String) {
//        self.name = name
//        self.manufacturer = "Commodore"
//    }
}

let c64 = CommodoreComputer(name: "C64")

let c128 = CommodoreComputer(name: "C128")

c64.name
c64.manufacturer
//c64.name = "bla"

struct Person2 {
    let firstName: String
    let lastName: String
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}

let fooBar = Person2(firstName: "Rokas", lastName: "Rudzianskas")

fooBar.firstName
fooBar.lastName
fooBar.fullName

struct Car {
    var currentSpeed: Int
    mutating func drive(speed: Int) {
        "Driving..."
        currentSpeed = speed
    }
}

let immutableCar = Car(currentSpeed: 10)
//immutableCar.drive(speed: 20)

var mutableCar = Car(currentSpeed: 10)
//mutableCar.drive(speed: 30)
//mutableCar.currentSpeed

let copy = mutableCar

mutableCar.drive(speed: 20)
mutableCar.currentSpeed

copy.currentSpeed
