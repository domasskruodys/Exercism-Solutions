// TODO: define the 'remainingMinutesInOven' function
func remainingMinutesInOven(elapsedMinutes: Int, expectedMinutesInOven: Int = 40) -> Int {
    return expectedMinutesInOven - elapsedMinutes
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
        switch layer {
        case "noodles": noodleAmount += 3
        case "sauce": sauceAmount += 0.2
        default: break
        }
    }
    return (noodleAmount, sauceAmount)
}

// TODO: define the 'toOz' function
func toOz(_ noodleSauce: inout (noodles: Int, sauce: Double)) {
    noodleSauce = (noodleSauce.noodles, noodleSauce.sauce * 33.814)
}

// TODO: define the 'redWine' function
func redWine(layers: String...) -> Bool {
    var mozzarella = 0
    var ricotta = 0
    var bechamel = 0
    var meat = 0
    var sauce = 0

    func mozzarellaLayer(mozzarella: inout Int) {
        mozzarella += 1
    }

    func ricottaLayer(ricotta: inout Int) {
        ricotta += 1
    }

    func bechamelLayer(bechamel: inout Int) {
        bechamel += 1
    }

    func meatLayer(meat: inout Int) {
        meat += 1
    }

    func sauceLayer(sauce: inout Int) {
        sauce += 1
    }
    
    for layer in layers {
        switch layer {
        case "mozzarella": mozzarellaLayer(mozzarella: &mozzarella)
        case "ricotta": ricottaLayer(ricotta: &ricotta)
        case "béchamel": bechamelLayer(bechamel: &bechamel)
        case "meat": meatLayer(meat: &meat)
        case "sauce": sauceLayer(sauce: &sauce)
        default: break
        }
    }
    
    return mozzarella + ricotta + bechamel < meat + sauce || mozzarella + ricotta + bechamel == meat + sauce
}
