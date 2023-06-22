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

numbers.compactMap((value: Int) -> String? in value % 2 == 0 ? String(value) : nil)
