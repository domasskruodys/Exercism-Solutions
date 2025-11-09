enum ResistorError: Error {
    case invalidColor(String)
}

enum ResistorColor: Int, CaseIterable {
    case black = 0
    case brown = 1
    case red = 2
    case orange = 3
    case yellow = 4
    case green = 5
    case blue = 6
    case violet = 7
    case grey = 8
    case white = 9
    
    static func colorCode(for member: String) throws -> Int {
        switch member {
        case "black": ResistorColor.black.rawValue
        case "brown": ResistorColor.brown.rawValue
        case "red": ResistorColor.red.rawValue
        case "orange": ResistorColor.orange.rawValue
        case "green": ResistorColor.green.rawValue
        case "blue": ResistorColor.blue.rawValue
        case "violet": ResistorColor.violet.rawValue
        case "grey": ResistorColor.grey.rawValue
        case "white": ResistorColor.white.rawValue
        default: throw ResistorError.invalidColor(member)
        }
    }
    
    static var colors: [String] { return ResistorColor.allCases.map { String(describing: $0) }
    }
}