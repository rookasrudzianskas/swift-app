import Foundation

let firstName: String? = "Foo"
let lastName: String? = "Bar"
let fullName = firstName + lastName

func + (lhs: String?, rhs: String?) -> String? {
    switch(lhs, rhs) {
    case( .none, .none):
        return nil
    case let (.some(value), .none),
        let ( .none, .some(value)):
        return value
    case  let ( .some(lhs), .some(rhs)):
        return lhs + rhs
    }
}


prefix operator ^
prefix func ^ (value: String) -> String {
    value.uppercased()
}

let lowercaseName = "foo Bar"
let uppercaseName = ^lowercaseName


postfix operator *
postfix func * (value: String) -> String {
    "*** \(value) ***"
}

let withStarts = lowercaseName*




struct Person {
    let name: String
}

struct Family {
    let members: [Person]
}

let mom = Person(name: "Mom")
let dad = Person(name: "Dad")
let sis = Person(name: "SIs")
let bro = Person(name: "Bro")


func + (
    lhs: Person,
    rhs: Person
) -> Family {
    Family(members: [
        lhs, rhs
    ])
}


let family = mom + dad


func + (
    lhs: Family,
    rhs: Person
) -> Family {
    var members = family.members
    members.append(rhs)
    return Family(members: members)
}

let familyWithBro = family + bro
