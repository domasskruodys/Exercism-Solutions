class Bob {
    static func response(_ message: String) -> String {
        let parsedMessage = message.filter { !$0.isWhitespace }
        let containsLetters = parsedMessage.contains(where: { $0.isLetter })
        let isYelling = containsLetters && parsedMessage == parsedMessage.uppercased()
        let isQuestion = parsedMessage.last == "?"

        switch (parsedMessage.isEmpty, isYelling, isQuestion) {
        case (true, _, _): return "Fine. Be that way!"
        case (false, true, true): return "Calm down, I know what I'm doing!"
        case (false, true, false): return "Whoa, chill out!"
        case (false, false, true): return "Sure."
        default: return "Whatever."
        }
    }
}