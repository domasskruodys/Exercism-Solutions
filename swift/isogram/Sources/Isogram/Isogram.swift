func isIsogram(_ string: String) -> Bool {
    let isogram = string
        .filter { $0.isLetter }
        .map { $0.uppercased() }
    
    return isogram.count == Set(isogram).count
}
