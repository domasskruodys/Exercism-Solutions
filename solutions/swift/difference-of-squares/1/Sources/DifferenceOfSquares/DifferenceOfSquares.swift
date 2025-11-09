class Squares {
    let n: Int
    
    init(_ n: Int) {
        self.n = n
    }
    
    var squareOfSum: Int {
        var total = 0
        for i in 0...n {
            total += i
        }
        return total * total
    }
    
    var sumOfSquares: Int {
        var total = 0
        for i in 0...n {
            total += i * i
        }
        return total
    }

    var differenceOfSquares: Int {
        return abs(squareOfSum - sumOfSquares)
    }
}
