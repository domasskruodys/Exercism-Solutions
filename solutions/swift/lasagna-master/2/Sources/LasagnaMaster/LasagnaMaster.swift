// TODO: define the 'remainingMinutesInOven' function
func remainingMinutesInOven(elapsedMinutes elapsed: Int, expectedMinutesInOven expected: Int = 40) -> Int {
    return expected - elapsed
}

// TODO: define the 'preparationTimeInMinutes' function
func preparationTimeInMinutes(layers: String...) -> Int {
    return layers.count * 2
}

// TODO: define the 'quantities' function
func quantities(layers: String...) -> (noodles: Int, sauce: Double) {
    var noodleAmount = 0
    var sauceAmount = 0.0
    for layer in layers {
        if layer == "noodles" {
            noodleAmount += 3
        }
        if layer == "sauce" {
            sauceAmount += 0.2
        }
    }
    return (noodleAmount, sauceAmount)
}

// TODO: define the 'toOz' function
func toOz(_ noodleSauce: inout (noodles: Int, sauce: Double)) {
    noodleSauce.sauce *= 33.814
}

// TODO: define the 'redWine' function
func redWine(layers: String...) -> Bool {
    func countLayers(name: String, layers: [String]) -> Int {
        layers.filter { $0 == name }.count
    }

    let mozzarella = countLayers(name: "mozzarella", layers: layers)
    let ricotta = countLayers(name: "ricotta", layers: layers)
    let béchamel = countLayers(name: "béchamel", layers: layers)
    let meat = countLayers(name: "meat", layers: layers)
    let sauce = countLayers(name: "sauce", layers: layers)

    return mozzarella + ricotta + béchamel <= meat + sauce
}

