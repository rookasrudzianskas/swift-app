import Foundation

enum Animals {
    case cat, dog, rabbit,
         hedgeHog
}

let cat = Animals.cat
cat

if cat == Animals.cat {
    "This is a cat"
} else if cat == Animals.dog {
    "This is a dog"
} else {
    "This is something else"
}

switch cat {
case .cat:
    "This is cat"
    break
case .dog:
    "This is a dog"
    break
case .rabbit:
    break
case .hedgeHog:
    "This is a hedgedog"
    break
}
func describeAnimal(_ animal: Animals) {

}

describeAnimal(Animals.rabbit)

//func == (
//    lhs: Animals,
//    rhs: Int
//) -> Bool {
//    lhs == .cat && rhs == 3
//}

enum Shortcut {
    case fileOrFolder(path: URL, name: String)
    case wwwUrl(path: URL)
    case song(artist: String, songName: String)
}

let wwwApple = Shortcut.wwwUrl(path: URL(string: "https://apple.com")!)

switch wwwApple {
case .fileOrFolder(
    path: let path,
    name: let name
):
    path
    name
    break
case .wwwUrl(
    path: let path
):
    path
    break
case .song(
    artist: let artist,
    songName: let songName
):
    artist
    songName
    break
}

switch wwwApple {
case .fileOrFolder(
    let path,
    let name
):
    path
    name
    break
case .wwwUrl(
    let path
):
    path
    break
case .song(
    let artist,
    let songName
):
    artist
    songName
    break
}

switch wwwApple {
case let .fileOrFolder(
    path,
    name
):
    path
    name
    break
case let .wwwUrl(
    path
):
    path
    break
case let .song(
    artist,
    songName
):
    artist
    songName
    break
}

if case let .wwwUrl(path) = wwwApple {
    path
}

let withoutYou = Shortcut.song(artist: "Symphont X", songName: "Without you")

if case let .song(_, songName) = withoutYou {
    songName
}

enum Vehicle {
    case car(manufacturer: String, model: String)
    case bike(manufacturer: String, yearMade: Int)
    var manufacturer: String {
        switch self {
        case let .car(manufacturer, _), let .bike(manufacturer, _):
            return manufacturer
        }
    }
}

let car  = Vehicle.car(
    manufacturer: "Tesla", model: "X"
)

car.manufacturer

let bike = Vehicle.bike(manufacturer: "HD", yearMade: 23213)

bike.manufacturer



enum FamilyMember: String {
    case father = "Dad"
    case mother = "Mom"
    case sister = "Bro"
    case brother = "Sis"
}

FamilyMember.father.rawValue
FamilyMember.brother.rawValue
FamilyMember.sister.rawValue

enum FavoriteEmoji: String, CaseIterable {
    case blush = "🚀"
    case rocket = "🥰"
    case fire = "🔥"
}

FavoriteEmoji.allCases
FavoriteEmoji.allCases.map(\.rawValue)

FavoriteEmoji.blush.rawValue

if let blush = FavoriteEmoji(rawValue: "🚀") {
    "Found"
    blush
} else {
    "This emoji does not exists"
}

if let snow = FavoriteEmoji(rawValue: "❄️") {
    "Snow exists "
    snow
} else {
    "This emoji does not exists"
}
