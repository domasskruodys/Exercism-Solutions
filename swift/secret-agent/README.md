# Secret Agent Double-Null0111

Welcome to Secret Agent Double-Null0111 on Exercism's Swift Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Introduction

## Function types

If one were to remove all of the names and labels from a Swift function signature, they would be left with the type of the function.

```swift
func shoppingList(item: String, quantity: Int) -> String {
  "You need to buy \(quantity) \(item)."
}
// shoppingList: (String, Int) -> String

func repeater(_ phrase: String, times: Int) -> String {
  var result = ""
  for _ in 1...times {
    result += phrase
  }
  return result
}
// repeater: (String, Int) -> String

func printString(line: String) {
  print(line)
}
// printString: (String) -> ()
```

Notice that the types of the first two functions are the same, `(String, Int) -> String`, even though the two signatures are different and the two functions work very differently. They both take a `String` and an `Int` as input and return a `String`. And, as one can see from the third function's type, even though the function body doesn't appear to return anything, it actually implicitly returns `()`, the only value of type `Void`.

These function types can be used in the same manner as any other type in Swift, for example, they can be used in the declaration of variables or constants. And since functions are values in Swift, already existing functions can be assigned to these constants/variables:

```swift
var stringAndIntToString: (String, Int) -> String

stringAndIntToString = shoppingList
stringAndIntToString("carrots", 3)
// => "You need to buy 3 carrots."
```

As with other variables/constants, the value you assign to it must be of the correct type:

```swift
stringAndIntToString = printShoppingList
// Error: Cannot assign value of type '(String) -> ()' to type '(String, Int) -> String'
```

### Function types as parameter types

As function types can be used anywhere other types can be used, it follows that they can be used as parameter types and passed into other functions and called from within those functions.

```swift
func apply3(to str: String, function f: (String, Int) -> String) -> String {
  f(str,3)
}
// apply3: ([String], (String, Int) -> String) -> [String]

apply3(to: "eggs", function: shoppingList)
// => "You need to buy 3 eggs."

apply3(to: "eggs", function: repeater)
// => "eggseggseggs"
```

## Function types as return types

Similarly, function types may be used as return types for functions. In other words, one can write functions that create and return other functions. When creating these functions, the function that is returned can use the other parameters passed into the function or the local variables created inside the parent function.

```swift
func makeAdder(base: Int) -> (Int) -> Int {
  func adder(_ i: Int) -> Int {
    base + i
  }
  return adder
}
// makeAdder: (Int) -> (Int) -> Int

let add10 = makeAdder(base: 10)
// add10: (Int) -> Int

let subtract20 = makeAdder(base: -20)
// subtract10: (Int) -> Int

add10(5)
// => 15

subtract20(5)
// => -15
```

## Instructions

Hello, Agent Double-Null0111.

Your mission, should you choose to accept it, is to write a pair of tools to help you infiltrate UMBRA (United Minions Being Really Awful) headquarters and retrieve the plans for their latest really awful scheme. There are two tools you will need to carry out this mission.

## 1. Protect the recovered secret plans with a password

Once you have the secret plans, you will need to protect it so that only those who know the password can recover them.

In order to do this, you will need to implement the function `protectSecret(_ secret: String, withPassword password: String) -> (String) -> String`.
This function will return another function that takes possible password strings as input.
If the entered password is correct the new function returns the hidden secret, but if the password is incorrect, the function returns "Sorry. No hidden secrets here."

```swift
let secretFunction = protectSecret("Steal the world's supply of french fries!", withPassword: "5up3r53cr37")

secretFunction("Open sesame")
// Returns "Sorry. No hidden secrets here."

secretFunction("5up3r53cr37")
// Returns "Steal the world's supply of french fries!"
```

## 2. Generate a combination to open their safe

We have learned that UMBRA bases all of their safe combinations on the number of the room they are located in.
The safe combinations are generated by repeatedly applying a special function to the room number.
So the first number of the combination will come from applying the function to the room number, the second will come from applying the function to the first number, and the third from applying the function to the second number.

However, UMBRA regularly changes the function used to generate the combinations, so your tool will need to take both a room number and the appropriate function in order to generate the combination.

Implement the function `generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int)` to generate the combination you will need.

```swift
func makeCombo(_ x: Int) -> Int {
  (x * 13) % 256
}

generateCombination(forRoom: 227, usingFunction: makeCombo)
// Returns (135, 219, 31)
```

## Source

### Created by

- @wneumann