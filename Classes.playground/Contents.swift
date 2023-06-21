import Foundation

//struct Person {
//    var name: String
//    var age: Int
//}

class Person {
    var name: String
    var age: Int
    
    init(
        name: String,
        age: Int
    ) {
        self.name = name
        self.age = age
        
    }
    
    func increaseAge() {
        self.age += 1
    }
}

let foo = Person(name: "Foo", age: 20)

foo.age
foo.increaseAge()
foo.age

//foo = Person(name: "FOO", age: 20)

foo.age
let bar = foo
bar.increaseAge()
foo.age
bar.age
foo.age += 10
foo.age

if foo === bar {
    "foo and bar point to the same memory"
} else {
    "The do not"
}

class Vehicle {
    func goVroom() {
        "Vrooooom"
    }
}

class Car: Vehicle {
    
}

let car = Car()
car.goVroom()

class Person2 {
    private(set) var age: Int
    init(age: Int) {
        self.age = age
    }
    func increaseAge() {
        self.age += 1
    }
}

let baz = Person2(age: 20)
baz.age
//baz.age +=1


baz.increaseAge()
baz.age







