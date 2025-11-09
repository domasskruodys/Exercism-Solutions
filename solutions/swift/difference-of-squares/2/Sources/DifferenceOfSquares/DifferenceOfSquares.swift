class Squares {
    let n: Int
    
    init(_ n: Int) {
        self.n = n
    }
    
    var squareOfSum: Int {
        let sum = (0...n).reduce(0){$0 + $1}
        return sum * sum
    }
    
    var sumOfSquares: Int {
        let sum = (0...n).reduce(0){$0 + ($1 * $1)}
        return sum
    }

    var differenceOfSquares: Int {
        return abs(squareOfSum - sumOfSquares)
    }
}
