import Foundation
import CoreGraphics

func performInt( _ op: (Int, Int) -> Int, on lhs: Int, and rhs: Int) -> Int {
    op(lhs, rhs)
}

performInt(+, on: 10, and: 20)
performInt(-, on: 10, and: 20)
performInt(*, on: 10, and: 20)
performInt(/, on: 10, and: 20)
