import Foundation
import CoreGraphics

func perform<N: Numeric>( _ op: (N, N) -> N, on lhs: N, and rhs: N) -> N {
    op(lhs, rhs)
}

let x = perform(+, on: 10.01, and: 20)
x
//
//performInt(+, on: 10, and: 20)
//performInt(-, on: 10, and: 20)
//performInt(*, on: 10, and: 20)
//performInt(/, on: 10, and: 20)


func perform2<N>( _ op: (N, N) -> N, on lhs: N, and rhs: N) -> N where N: Numeric {
    op(lhs, rhs)
}

let y = perform2(+, on: 10.01, and: 20)
x
//
perform2(+, on: 10, and: 20)
perform2(-, on: 10, and: 20)
perform2(*, on: 10, and: 20)
perform2(/, on: 10, and: 20)

protocol CanJump {
    func jump()
}

protocol CanRun {
    func run()
}

struct Person: CanJump, CanRun {
    func jump() {
        "Jumping"
    }
    
    func run() {
        "Running"
    }
}

func jumpAndRun<T: CanJump & CanRun>( _ value: T) {
    value.jump()
    value.run()
}

let person = Person()
jumpAndRun(person)

let names: Array<String> = ["FOO", "Bar"]

//extension [String] {
//    func longestString() -> String? {
//        self.sorted { (lhs: String, rhs: String) -> Bool in
//            lhs.count > rhs.count
//        }.first
//    }
//}

[
    "Foo",
    "Bar Baz"
]


