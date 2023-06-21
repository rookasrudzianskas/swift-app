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
