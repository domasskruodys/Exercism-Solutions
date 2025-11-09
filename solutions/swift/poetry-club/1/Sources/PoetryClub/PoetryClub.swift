import Foundation

func splitOnNewlines(_ poem: String) -> [String] {
    let splitPoem = poem.components(separatedBy: "\n")
    return splitPoem
}

func frontDoorPassword(_ phrase: String) -> String {
    
    if phrase.isEmpty {
        return "_"
    }
    
    let splitPoem = splitOnNewlines(phrase)
    var password = ""

    for line in splitPoem {
        password.append(line.prefix(1).capitalized)
    }
    return password
}

func backDoorPassword(_ phrase: String) -> String {
    let splitPoem = splitOnNewlines(phrase)
    var password = ""
    for line in splitPoem {
        password.append(contentsOf: line.trimmingCharacters(in: .whitespaces).suffix(1))
    }
    password.append(", please")
    return password
}

func secretRoomPassword(_ phrase: String) -> String {
    let splitPoem = splitOnNewlines(phrase)
    var password = ""
    var counter = 0
    for line in splitPoem {
        if let index = line.index(line.startIndex, offsetBy: counter, limitedBy: line.endIndex) {
            password.append(line[index])
        }
        counter += 1
    }
    password.append("!")
    return password.uppercased()
}
