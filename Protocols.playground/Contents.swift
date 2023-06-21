import Foundation

protocol CanBreathe {
    func breathe()
}

struct Animal: CanBreathe {
    func breathe() {
        "Animal breathing"
    }
}

struct Person: CanBreathe {
    func breathe() {
        "Person breathing"
    }
}

let dog = Animal()
dog.breathe()

let foo = Person()
foo.breathe()

protocol CanJump {
    func jump()
}

extension CanJump {
    func jump() {
        "Jumping..."
    }
}

struct Cat: CanJump {
    
}

let whiskers = Cat()
whiskers.jump()

protocol HasName {
    var name: String { get }
}
