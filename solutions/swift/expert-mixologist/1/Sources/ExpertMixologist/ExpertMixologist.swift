func timeToPrepare(drinks: [String]) -> Double {
    var totalTime = 0.0
    for drink in drinks {
        switch drink {
        case "beer", "soda", "water":
            totalTime += 0.5
        case "shot":
            totalTime += 1.0
        case "mixed drink":
            totalTime += 1.5
        case "fancy drink":
            totalTime += 2.5
        case "frozen drink":
            totalTime += 3.0
        default:
            continue
        }
    }
    
    return totalTime
}

func makeWedges(needed: Int, limes: [String]) -> Int {
    var limesNeeded = needed
    var counter = 0

    while limesNeeded > 0 && counter < limes.count {
        switch limes[counter] {
        case "small":
            limesNeeded -= 6
        case "medium":
            limesNeeded -= 8
        case "large":
            limesNeeded -= 10
        default:
            continue
        }
        counter += 1
    }
    
    return counter
}

func finishShift(minutesLeft: Int, remainingOrders: [[String]]) -> [[String]] {
    var minutesRemaining = Double(minutesLeft)
    var ordersRemaining = remainingOrders

    while minutesRemaining > 0, !ordersRemaining.isEmpty {
        minutesRemaining -= timeToPrepare(drinks: ordersRemaining.removeFirst())
    }
    
    return ordersRemaining
}

func orderTracker(orders: [(drink: String, time: String)]) -> (
    beer: (first: String, last: String, total: Int)?, soda: (first: String, last: String, total: Int)?
) {
    var firstBeer: String?
    var lastBeer: String?
    var beerCounter = 0

    var firstSoda: String?
    var lastSoda: String?
    var sodaCounter = 0

    var beerResult: (first: String, last: String, total: Int)?
    var sodaResult: (first: String, last: String, total: Int)?

    for (drink, time) in orders {
        switch drink {
        case "beer":
            beerCounter += 1
            if let currentFirst = firstBeer {
                if time < currentFirst {
                    firstBeer = time
                }
            } else {
                firstBeer = time
            }

            if let currentLast = lastBeer {
                if time > currentLast {
                    lastBeer = time
                }
            } else {
                lastBeer = time
            }

        case "soda":
            sodaCounter += 1
            if let currentFirst = firstSoda {
                if time < currentFirst {
                    firstSoda = time
                }
            } else {
                firstSoda = time
            }

            if let currentLast = lastSoda {
                if time > currentLast {
                    lastSoda = time
                }
            } else {
                lastSoda = time
            }

        default:
            continue
        }
    }

    if let first = firstBeer, let last = lastBeer {
        beerResult = (first: first, last: last, total: beerCounter)
    }

    if let first = firstSoda, let last = lastSoda {
        sodaResult = (first: first, last: last, total: sodaCounter)
    }
    
    return (beer: beerResult, soda: sodaResult)
}
