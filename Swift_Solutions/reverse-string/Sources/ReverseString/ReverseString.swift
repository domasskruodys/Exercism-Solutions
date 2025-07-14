func reverseString(_ input: String) -> String {
    var inputCopy: [Character] = Array(input)
    var leftIndex = 0
    var rightIndex = inputCopy.count - 1

    while rightIndex > leftIndex {
        let temporaryValue = inputCopy[leftIndex]
        inputCopy[leftIndex] = inputCopy[rightIndex]
        inputCopy[rightIndex] = temporaryValue
        leftIndex += 1
        rightIndex -= 1
    }

    return String(inputCopy)
}
