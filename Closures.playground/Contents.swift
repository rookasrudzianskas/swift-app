import Foundation

//func add(_ lhs: Int, _ rhs: Int) -> Int {
//    lhs + rhs
//}

let add: (Int, Int) -> Int = {(lhs: Int, rhs: Int) -> Int in
    lhs + rhs
}

add(20, 30)

func customAdd(_ lhs: Int,_ rhs: Int, using function: (Int, Int) -> Int) -> Int {
    function(lhs, rhs)
}

customAdd(
    20,
    30
) {(lhs: Int, rhs: Int) -> Int in
    lhs + rhs
}
