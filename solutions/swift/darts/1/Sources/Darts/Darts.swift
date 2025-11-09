func dartScore(x: Double, y: Double) -> Int {
    let inside: Double = 1
    let middle: Double = 25
    let outer: Double = 100
    let value = (x * x) + (y * y)
    
    if value <= inside {
        return 10
    } else if value <= middle {
        return 5
    } else if value <= outer {
        return 1
    } else {
        return 0
    }
}