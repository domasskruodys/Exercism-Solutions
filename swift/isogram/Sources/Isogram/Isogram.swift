func isIsogram(_ string: String) -> Bool {
    let isogram = string
        .uppercased()
        .filter { $0.isLetter }

    return isogram.count == Set(isogram).count
}
