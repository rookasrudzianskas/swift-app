import Foundation

struct Person {
    @discardableResult
    func getAge() -> Int {
        19
    }
    func doSomething() {
        let age = getAge()
    }
}
