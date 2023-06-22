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

do {
    let fullName = try foo.getFullName()
} catch {
    "Got an error = \(error)"
}


do {
    let fullName = try foo.getFullName()
    fullName
} catch is Person.Errors {
    "Got an error"
}

let bar = Person(
    firstName: nil, lastName: nil
)

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





