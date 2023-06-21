import Foundation

let myName = "Rokas"
let yourName = "Tomas"

var names = [
    myName,
    yourName
]

names = ["BLA"]
names.append("BAZ")
names.append("Rimas")


let foo = "Foo"
var foo2 = foo

foo2 = "Foo 2"
foo
foo2

let moreNames = ["Foo", "bar"]

var copy = moreNames
copy.append("baz")

copy

let oldArray = NSMutableArray(
    array: [
        "Foo",
        "Bar"
    ]
)

oldArray.add("Baz")

var newArray = oldArray

newArray.add("Quix")
newArray
oldArray

let someNames = NSMutableArray(
    array: [
        "Foo",
        "Bar"
    ]
)

// someNames = ["Bla"]

func changeTheArray(_ array: NSArray) {
    let copy = array as! NSMutableArray
    copy.add("Baz")
}

changeTheArray(someNames)
someNames
