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


class Tesla {
    let manufacturer = "Tesla"
    let model: String
    let year: Int
    
    init() {
        self.model = "X"
        self.year = 2023
    }
    
    init(
        model: String,
        year: Int
    ) {
        self.model = model
        self.year = year
    }
    
    convenience init(model: String) {
        self.init(model: model, year: 2023)
    }
}

class TeslaModelY: Tesla {
    override init() {
        super.init(model: "Y", year: 2023)
    }
//    super.init(model: "Y")
}

let modelY = TeslaModelY()
modelY.model
modelY.year
modelY.manufacturer

let fooBar = Person2(age: 20)
fooBar.age

func doSomething(with person: Person2) {
    person.increaseAge()
}

doSomething(with: fooBar)
fooBar.age

class MyClass {
    init() {
        "Initialized"
    }
    
    func doSomething() {
        
    }
    
    deinit {
        "Deinitialized"
    }
}


let myClosurel = {
    let myClass = MyClass()
    myClass.doSomething()
}

myClosurel()

