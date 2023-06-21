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

protocol View {
    func addSubView(_ view: View)
}

extension View {
    func addSubView(_ view: View) {
        
    }
}


struct Button: View {
    // empty
}

struct Table: View {
    // empty
}

protocol PresentableAsView {
    associatedtype ViewType: View
    func produceView() -> ViewType
    func configure(
        superView: View,
        thisView: ViewType
    )
    func present(
        view: ViewType, on superView: View)
}


extension PresentableAsView {
    func configure(
        superView: View,
        thisView: View
    ) {
        // empty by default
    }
    func present(
        view: ViewType,
        on superView: View
    ) {
        superView.addSubView(view)
    }
}


struct MyButton: PresentableAsView {
    func produceView() -> Button {
        Button()
    }
    
    func configure(superView: View, thisView: Button) {
        <#code#>
    }
}


extension PresentableAsView {
    func doSomethingWithView() {
        "This isa button"
    }
}

let button = MyButton()
//button.doSomethingWithButton()

struct MyTable: PresentableAsView {
    func produceView() -> Table {
        Table()
    }
    
    func configure(superView: View, thisView: Table) {
        <#code#>
    }
}

let myTable = MyTable()
myTable.doSomethingWithView()


extension [Int] {
    func average() -> Double {
        Double(self.reduce(0, +)) / Double(self.count)
    }
}

