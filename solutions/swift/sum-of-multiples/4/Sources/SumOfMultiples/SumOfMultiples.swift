func toLimit(_ limit: Int, inMultiples: [Int]) -> Int {
    guard limit > 0 || !inMultiples.isEmpty || !inMultiples.allSatisfy({ $0 == 0 }) else {
        return 0
    }
    
    let filteredMultiples = inMultiples.filter { $0 > 0 }
    
    if let multiple = filteredMultiples.first, filteredMultiples.count == 1 {
        let n = (limit - 1) / multiple
        return multiple * n * (n + 1) / 2
    }
    
    return Set(filteredMultiples
        .flatMap { multiple in stride(from: multiple, to: limit, by: multiple) })
        .reduce(0, +)
}
