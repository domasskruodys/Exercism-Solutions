func toLimit(_ limit: Int, inMultiples: [Int]) -> Int {
    guard limit > 0 else {
        return 0
    }

    return Set(inMultiples
        .filter { $0 != 0 }
        .flatMap { multiple in stride(from: multiple, to: limit, by: multiple) })
        .reduce(0, +)
}