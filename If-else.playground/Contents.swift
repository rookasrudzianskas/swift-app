import Foundation

let myName = "Rokas"
let myAge = 20
let yourName = "Tomas"
let yourAge = 30

if myName == "Rokas" {
    "You name is  \(myName)"
} else {
    "Oopps I gueessed it wrong"
}

if myName == "Rokas" {
    "Now iguessed it correctly"
} else if myName == "Tomas" {
    "Are you foo?"
} else {
    "Okay I give up"
}

if "Rokas" == myName {
    "An uncommon way of doing this"
}

if myName == "Rokas" && myAge == 20 {
    "Name is Rokas and age i  20"
} else if myAge == 20 {
    "I only guessed the name"
} else {
    "I do not know nothing"
}

if myAge == 20 || myName == "Rokas" {
    "Either age is 20 or the name is Rokas"
} else if myName == "Foo" {
    "Are you Foo?"
}

if myName == "Rokas"
    && myAge == 20
    && yourName == "Foo"
    || yourAge == 30 {
    "My name is Rokas and your name is Foo or you are 30"
}

if (myAge == "Rokas" && myAge == 20) && (yourName == "Foo" || yourAge == 30) {
    "Now this works fine"
}


