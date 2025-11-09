func toLimit(_ limit: Int, inMultiples: [Int]) -> Int {
    var setOfMultiples = Set<Int>()
    
    guard limit > 0 else {
        return 0
    }
    
    for multiple in inMultiples {
        if multiple != 0 {
            var tempMultiple = multiple
            while tempMultiple < limit {
                setOfMultiples.insert(tempMultiple)
                tempMultiple += multiple
            }
        }
    }
    return setOfMultiples.reduce(0, +)
}