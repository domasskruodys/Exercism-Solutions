func getName(_ item: (name: String, amount: Int)) -> String {
  return item.name
}

func createToy(name: String, amount: Int) -> (name: String, amount: Int) {
  let toy: (name: String, amount: Int) = (name: name, amount: amount)
  return toy
}

func updateQuantity(_ items: [(name: String, amount: Int)], toy: String, amount: Int) ->  [(name: String, amount: Int)] {
  var toys = items
  for i in 0..<toys.count {
    if toys[i].name == toy {
      toys[i].amount = amount
    }
  }
  return toys
}

func addCategory(_ items: [(name: String, amount: Int)], category: String) -> [(name: String, amount: Int, category: String)] {
  var toys: [(name: String, amount: Int, category: String)] = []
  for item in items {
    let toy = (name: item.name, amount: item.amount, category: category)
    toys.append(toy)
  }
  return toys 
}
