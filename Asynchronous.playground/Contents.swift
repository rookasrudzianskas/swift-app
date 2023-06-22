import Foundation
import PlaygroundSupport
import _Concurrency

PlaygroundPage.current.needsIndefiniteExecution = true

//func calculateFullName(
//    firstName: String,
//    lastName: String
//) async -> String {
//    try? await Task.sleep(for: .seconds(1))
//    return "This is working"
//}

//Task {
//    let result1 = await calculateFullName(firstName: "Foo", lastName: "Bar")
//    async let result2 = calculateFullName(firstName: "Rokas", lastName: "Rudzianskas")
//    await result2
//}



enum Clothe {
    case socks, shirt, trousers
}

func buySocks() async throws -> Clothe {
    try? await Task.sleep(for: .seconds(1))
}

func buyShirt() async throws -> Clothe {
    try await Task.sleep(for: .seconds(1))
    return Clothe.shirt
}

func buyTrousers() async throws -> Clothe {
    try await Task.sleep(for: .seconds(1))
    return Clothe.trousers
}

struct Ensemble {
    let clothes: [Clothe]
    let totalPrice: Double
}

func buyWholeEnsemble() async throws -> Ensemble {
    async let socks = buySocks()
    async let shirt = buyShirt()
    async let throusers = buyTrousers()
    let ensemble = Ensemble(clothes: await [try socs, try shirt, try throusers], totalPrice: 299) return ensemble
}

Task {
    if let ensemble = try? await buyWholeEnsemble() {
        ensemble
    } else {
        "SOmething went wrong"
    }
}

func getFullName(
    delay: Duration,
    calculator: () async -> String
) async -> String {
    try? await Task.sleep(for: delay)
    return await calculator()
}

func fullName() async -> String {"Foo Bar"}
Task {
    await getFullName(delay: .seconds(1), calculator: {
        <#code#>
    })
}
