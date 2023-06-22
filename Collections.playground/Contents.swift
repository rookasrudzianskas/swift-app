import Foundation

let numbers = [1, 2, 3, 4, 5]

numbers.first
numbers.last
numbers.count
numbers.map(-)

var mutatingNumbers = [0, 1, 2]
mutatingNumbers.append(7)
mutatingNumbers.insert(3, at: 0)
mutatingNumbers.insert(contentsOf: [1, 2], at: 0)

for value in numbers {
    value
}

for value in numbers where value % 2 == 0 {
    value
}

numbers.map {(value: Int) -> String in String(value * 2)}

let values = numbers.map {(value: Int) -> Int in value * 2}

numbers.map {$0 * 2}

numbers.filter { (value: Int) -> Bool in value >= 3}

//numbers.compactMap((value: Int) -> String? in value % 2 == 0 ? String(value) : nil)

let numbers2: [Int?] = [1, 2, nil ,4, 5]
numbers2.count

let notNils = numbers2.filter {(value: Int?) -> Bool in value != nil}

//let notNils2 = numbers2.compactMap{{value: Int?} -> Int? in value)

//notNils2

//let numbers = [1, 2, 3, 4, 5]
//numbers2.count

let stuff1 = [
    1,
    "Hello",
    2,
    "World"
] as [Any]

stuff1.count


let stuff2: [Any] = [
    1,
    "Hello",
    2,
    "World"
]

stuff2.count

let uniqueNumbers = Set([1, 2, 3, 4, 5])

uniqueNumbers.count
uniqueNumbers.map(-)

let myNumbers = Set([1, 2, 3, nil, 5])
//let notNilNumbers = Set(
//    myNumbers.compactMap({ <#Int?#> in
//        <#code#>
//    })
//)

let stuff3: Set<AnyHashable> = [
    1, 2, 3, "ROkas"
]

stuff3.count

let intsInStuff1 = stuff1.compactMap {(value: Any) -> Int? in value as? Int}

let intsInStuff2 = stuff1.compactMap {(value: Any) -> String? in value as? String}

let intsInStuff3 = stuff3.compactMap {(value: AnyHashable) -> Int? in value as? Int}

type(of: intsInStuff3)

struct Person: Hashable {
    let id: UUID
    let name: String
    let age: Int
}

let fooId = UUID()
let foo = Person(id: fooId, name: "Foo", age: 20)
let bar = Person(id: fooId, name: "Bar", age: 30)


let people: Set<Person> = [foo, bar]

people.count


struct Person2: Hashable {
    let id: UUID
    let name: String
    let age: Int
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (
        lhs: Self,
        rhs: Self
    ) -> Bool {
        lhs.id == rhs.id
    }
}


let bazId = UUID()

let baz = Person2(id: bazId, name: "baz", age: 20)

let qk = Person2(id: bazId, name: "Quic", age: 30)

if baz == qk {
    "Same"
}

let poeple2 = Set([baz, qk])
people2


