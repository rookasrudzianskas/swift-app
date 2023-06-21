import Foundation

func noArgumentsAndNoReturnValue() {
    "I do not know what I am doing"
}

noArgumentsAndNoReturnValue()

func plusTwo(value: Int) {
    let newValue = value + 2
    return newValue
}

plusTwo(value: 1)

func newPlusTwo(value: Int) -> Int {
    value + 2
}

newPlusTwo(value: 30)

func customAdd(value1: Int, value2: Int) -> Int {
    value1 + value2
}

let customAdded = customAdd(value1: 39, value2: 32)

func customMinus(_ lhs: Int, _ rhs: Int) -> Int {
    lhs - rhs
}

let customSubstracted = customMinus(20, 10)
