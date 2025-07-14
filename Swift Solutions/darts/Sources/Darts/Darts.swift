func dartScore(x: Double, y: Double) -> Int {
    let inside = 10
    let middle = 5
    let outer = 1
    
    let score = ((x * x) + (y * y)).squareRoot()
    
    switch score {
        case 0.0...1.0: return inside
        case 1.0...5.0: return middle
        case 5.0...10.0: return outer
        default: return 0
    }
}
