class Bob {
    static func response(_ message: String) -> String {
        let parsedMessage = message.filter { !$0.isWhitespace }

        let containsLetters = parsedMessage.contains(where: { $0.isLetter })

        let isQuestion = parsedMessage.last == "?"

        let isYelling = containsLetters && parsedMessage == parsedMessage.uppercased()

        if parsedMessage.isEmpty {
            return "Fine. Be that way!"
        }
        else if isYelling && isQuestion { return "Calm down, I know what I'm doing!"
        }
        else if isYelling {
            return "Whoa, chill out!"
        }
        else if isQuestion { return "Sure." }
        else {
            return "Whatever."
        }
    }
}
