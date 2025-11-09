func toLimit(_ limit: Int, inMultiples: [Int]) -> Int {
    let filteredMultiples = inMultiples.filter { $0 > 0 }

    guard limit > 1 || !filteredMultiples.isEmpty else {
        return 0
    }
        
    if let multiple = filteredMultiples.first, filteredMultiples.count == 1 {
        let n = (limit - 1) / multiple
        return multiple * n * (n + 1) / 2
    }
    
    return Set(filteredMultiples
        .flatMap { multiple in stride(from: multiple, to: limit, by: multiple) })
        .reduce(0, +)
}