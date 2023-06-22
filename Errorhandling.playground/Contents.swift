import Foundation

struct Person {
    let firstName: String?
    let lastName: String?
    
    enum Errors: Error {
        case firstNameIsNil
        case lastNameIsNil
        case bothNamesAreNil
    }
    
    func getFullName() throws -> String {
        switch(firstName, lastName) {
            case(.none, .none):
                throw Errors.bothNamesAreNil
            case(.none, .some):
                throw Errors.firstNameIsNil
            case (.some, .none):
                throw Errors.lastNameIsNil
            case let (.some(firstName), .some(lastName)):
                return "\(firstName) \(lastName)"
        }
    
    }
}

let foo = Person(
    firstName: nil,
    lastName: nil
)
//
//do {
//    let fullName = try foo.getFullName()
//} catch {
//    "Got an error = \(error)"
//}
//
//
//do {
//    let fullName = try foo.getFullName()
//    fullName
//} catch is Person.Errors {
//    "Got an error"
//}
//
//let bar = Person(
//    firstName: nil, lastName: nil
//)

//do {
//    let fullName = try bar.getFullName()
//    fullName
//} catch is Person.Errors.firstNameIsNil {
//    "Got an error"
//} catch is Person.Errors.lastNameIsNil {
//    "Got an error"
//
//} catch is Person.Errors.bothNamesAreNil {
//    "Got an error"
//}  catch {
//    "'Some other error'"
//}


struct Car {
    let manufacturer: String
    
    enum Errors: Error {
        case invalidManufacturer
    }
    
    init(
        manufacturer: String
    ) throws {
        if manufacturer.isEmpty {
            throw Errors.invalidManufacturer
        }
        self.manufacturer = manufacturer
    }
}

do {
    let myCar = try Car(manufacturer: "")
    myCar
    myCar.manufacturer
} catch Car.Errors.invalidManufacturer {
    "Invalud"
} catch {
    "Some othe reerrror"
}


if let yourCar = try? Car(manufacturer: "Tesla") {
    "Success you can is tesla"
} else {
    "Fail, error is not shown"
}


let theirCar = try! Car(manufacturer: "Ford")
theirCar.manufacturer


struct Dog {
    let isInjured: Bool
    let isSleeping: Bool
    
    enum BarkingErrors: Error {
        case cannotBarkIsSleeping
    }
    
    enum RunningErrors: Error {
        case cannotRunIsInjured
    }
    
    func bark() throws {
        if isSleeping {
            throw BarkingErrors.cannotBarkIsSleeping
        }
        "Barl..."
    }
    
    func run() throws {
        if isInjured {
            throw RunningErrors.cannotRunIsInjured
        }
        "run"
    }
    
    func barkAndRun() throws {
        try bark()
        try run()
    }
}


let dog = Dog(
    isInjured: true, isSleeping: true
)

do {
    try dog.barkAndRun()
} catch Dog.BarkingErrors.cannotBarkIsSleeping, Dog.RunningErrors.cannotRunIsInjured {
    "Cannot"
} catch {
    "Something else"
}

do {
    try dog.barkAndRun()
} catch Dog.BarkingErrors.cannotBarkIsSleeping {
    "Cannot"
} catch Dog.RunningErrors.cannotRunIsInjured {
    "Something else"
} catch {
    "Nothing pretty much"
}

func fullName(firstName: String?, lastName: String?, calculator: (String?, String?) throws -> String?) rethrows -> String? {
    try calculator(firstName, lastName)
}

enum NameErrors: Error {
    case firstNameIsInvalid
    case lastNameIsInvalid
}

//func + (
//    firstName: String?,
//    lastName: String?
//) throws -> String {
//    guard let firstName,
//            !firstName.isEmpty else {
//                throw NameErrors.firstNameIsInvalid
//    }
//
//    guard let lastName,
//            !lastName.isEmpty else {
//                throw NameErrors.lastNameIsInvalid
//    }
//
//    return "The first name is and the last name is"
//}

//do {
//    let fooBar = try fullName(firstName: nil, lastName: nil, calculator: +)
//} catch NameErrors.firstNameIsInvalid {
//    "First"
//} catch NameErrors.lastNameIsInvalid {
//    "Second"
//} catch {
//    "Nothing"
//}


enum IntegerErrors: Error {
case noPositiveIntegerBefore(thisValue: Int)
}

func getPreviousPositiveInteger(from int: Int) -> Result<Int, IntegerErrors> {
    guard int > 0 else {
        return Result.failure(
            IntegerErrors.noPositiveIntegerBefore(thisValue: int)
        )
    }
    
    return Result.success(int - 1)
}

//func performGet(
//    forValue value: Int
//{
//    switch getPreviousPositiveInteger(from: value) {
//        case let .success(previrousValue):
//            "Error"
//        case let .failure(error):
//        switch error {
//            case let .noPositiveIntegerBefore(thisValue):
//                "Error"
//        }
//    }
//})
