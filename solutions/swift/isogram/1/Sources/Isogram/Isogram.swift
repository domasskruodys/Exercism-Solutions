func isIsogram(_ string: String) -> Bool {
    var isogramSet = Set<Character>()
    
    for letter in string.uppercased() {
        
        guard letter.isLetter else { continue }
        
        if isogramSet.contains(letter) {
            return false
            
        } else {
            isogramSet.insert(letter)
        }
    }
    return true
}
