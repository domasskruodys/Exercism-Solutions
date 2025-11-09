func totalBirdCount(_ birdsPerDay: [Int]) -> Int {
    var birdCount = 0
    for bird in birdsPerDay {
        birdCount += bird
    }
    return birdCount
}

func birdsInWeek(_ birdsPerDay: [Int], weekNumber: Int) -> Int {
    var birdCount = 0
    var weekSlice = birdsPerDay[weekNumber * 7 - 7 ... weekNumber * 7 - 1]
    for bird in weekSlice {
        birdCount += bird
    }
    return birdCount
}

func fixBirdCountLog(_ birdsPerDay: [Int]) -> [Int] {
    var updatedBirdsPerDay = birdsPerDay
    for bird in stride(from: 0, to: updatedBirdsPerDay.count, by: 2) {
        updatedBirdsPerDay[bird] += 1
    }
    return updatedBirdsPerDay
  
}
