# What I learned with this exercise.
I realised I could just apply an `.uppercased()` method to the string directly, instead of mapping it.
I learned about the `.isLetter` and `.isPunctuation` methods.
I learned about the `.allSatisfy` method, and how using an `inserted` check on a set can be used when using `.insert`, as it returns a tuple with a value "inserted" that can then be checked.

# Isogram

Welcome to Isogram on Exercism's Swift Track.
If you need help running the tests or submitting your code, check out `HELP.md`.

## Instructions

Determine if a word or phrase is an isogram.

An isogram (also known as a "non-pattern word") is a word or phrase without a repeating letter, however spaces and hyphens are allowed to appear multiple times.

Examples of isograms:

- lumberjacks
- background
- downstream
- six-year-old

The word _isograms_, however, is not an isogram, because the s repeats.

## Source

### Created by

- @robtimp

### Contributed to by

- @bhargavg
- @harquail
- @kytrinyx
- @lyuha
- @masters3d
- @ThomasHaz

### Based on

Wikipedia - https://en.wikipedia.org/wiki/Isogram
