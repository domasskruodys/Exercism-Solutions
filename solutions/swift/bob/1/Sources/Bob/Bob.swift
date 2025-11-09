class Bob {
    static func response(_ message: String) -> String {
        let parsedMessage = message.filter { !$0.isWhitespace }
        let containsLetters = parsedMessage.contains(where: { $0.isLetter })

        if parsedMessage.isEmpty {
            return "Fine. Be that way!"
        } else if containsLetters && parsedMessage == parsedMessage.uppercased() && parsedMessage.last == "?" { return "Calm down, I know what I'm doing!"
        } else if containsLetters && parsedMessage == parsedMessage.uppercased() {
            return "Whoa, chill out!"
        } else if parsedMessage.last == "?" { return "Sure." }
        else {
            return "Whatever."
        }
    }
}
