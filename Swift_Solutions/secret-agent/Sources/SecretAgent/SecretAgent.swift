func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
    func passwordString(test: String) -> String {
        if test == password {return secret}
        else
        { return "Sorry. No hidden secrets here." }
    }
    return passwordString
}

func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
    let functionRoom = f(room)
    let (firstNumber, secondNumber, thirdNumber) = (functionRoom, f(functionRoom), f(f(functionRoom)))
    
    return (firstNumber, secondNumber, thirdNumber)
}
