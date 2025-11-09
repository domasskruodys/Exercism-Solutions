func toLimit(_ limit: Int, inMultiples: [Int]) -> Int {
    var setOfMultiples = Set<Int>()
    
    for multiple in inMultiples {
        if multiple != 0 {
            var multipleCounter = multiple
            while multipleCounter <= limit - 1 {
                setOfMultiples.insert(multipleCounter)
                multipleCounter += multiple
            }
        }
    }
    return setOfMultiples.reduce(0) { $1 + $0 }
}
