func sliceSize(diameter: Double?, slices: Int?) -> Double? {
    guard let diameter = diameter,
          let slices = slices,
          diameter >= 0.0,
          slices > 1
    else {
        return nil
    }

    var areaCalculation = Double.pi * (diameter / 2 * diameter / 2)

    return areaCalculation / Double(slices)
}

func biggestSlice(
    diameterA: String, slicesA: String,
    diameterB: String, slicesB: String
) -> String {
    let areaA = sliceSize(diameter: Double(diameterA), slices: Int(slicesA))
    let areaB = sliceSize(diameter: Double(diameterB), slices: Int(slicesB))

    switch (areaA, areaB) {
    case (nil, nil): return "Neither slice is bigger"
    case (.some, nil): return "Slice A is bigger"
    case (nil, .some): return "Slice B is bigger"
    case (.some(let unwrappedAreaA), .some(let unwrappedAreaB)): if unwrappedAreaA > unwrappedAreaB {
            return "Slice A is bigger"
        } else if unwrappedAreaB > unwrappedAreaA {
            return "Slice B is bigger"
        } else {
            return "Neither slice is bigger"
        }
    }
}
