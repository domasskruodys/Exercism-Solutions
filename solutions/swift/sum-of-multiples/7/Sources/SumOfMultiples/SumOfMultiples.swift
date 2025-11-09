func toLimit(_ limit: Int, inMultiples: [Int]) -> Int {
    
    let filteredMultiples = inMultiples.filter { $0 > 0 }
    
    guard limit > 1 && !filteredMultiples.isEmpty else {
        return 0
    }
    
    if let multiple = filteredMultiples.first, filteredMultiples.count == 1 {
        let n = (limit - 1) / multiple
        return multiple * n * (n + 1) / 2
    }
    
    var lowestCommonMultiples: [Int] = []
    
    for number in inMultiples {
        let isLowestCommonMultiple = !lowestCommonMultiples.contains { number % $0 == 0 }
        
        if isLowestCommonMultiple {
            lowestCommonMultiples.append(number)
        }
    }
    
    var toLimit: [Bool] = Array(repeating: false, count: limit)
    var finalCount = 0
    
    for multiple in lowestCommonMultiples {
        for element in stride(from: multiple, to: limit, by: multiple) {
            if !toLimit[element] {
                finalCount += element
                toLimit[element] = true
            }
        }
    }
    
    return finalCount
}