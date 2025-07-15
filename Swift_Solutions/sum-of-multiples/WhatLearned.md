# What have I learned?

I have learned that you can use a boolean array instead of set when it comes to iterating through a large collection with comparison checks, this seems to improve processing performance at the cost of memory.

Ive learned about `contains` as a method on a collection.

I've learned about `stride` in a for in loop, to go through a filtered collection.

I've learned more about how `guard` works, and initially made a mistake by using `||` instead of `&&` in my guard condition. If you use a guard condition, its basically a checklist, if its `||`, you check if both sides of the condition are true. Like if a bouncer is a guard, and they are checking the conditions of wearing a suit, and wearing shoes, `||` would be if they are either wearing a suit or wearing shoes. `&&` would be only pass if they are wearing a suit and wearing shoes.
