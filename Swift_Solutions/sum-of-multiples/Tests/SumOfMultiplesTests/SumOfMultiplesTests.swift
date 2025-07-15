import Foundation
import Testing
import XCTest

@testable import SumOfMultiples

let RUNALL = Bool(ProcessInfo.processInfo.environment["RUNALL", default: "true"]) ?? false

@Suite struct SumOfMultiplesTests {
    @Test("no multiples within limit")
    func noMultiplesWithinLimit() {
        #expect(toLimit(1, inMultiples: [3, 5]) == 0)
    }

    @Test("one factor has multiples within limit", .enabled(if: RUNALL))
    func oneFactorHasMultiplesWithinLimit() {
        #expect(toLimit(4, inMultiples: [3, 5]) == 3)
    }

    @Test("more than one multiple within limit", .enabled(if: RUNALL))
    func moreThanOneMultipleWithinLimit() {
        #expect(toLimit(7, inMultiples: [3]) == 9)
    }

    @Test("more than one factor with multiples within limit", .enabled(if: RUNALL))
    func moreThanOneFactorWithMultiplesWithinLimit() {
        #expect(toLimit(10, inMultiples: [3, 5]) == 23)
    }

    @Test("each multiple is only counted once", .enabled(if: RUNALL))
    func eachMultipleIsOnlyCountedOnce() {
        #expect(toLimit(100, inMultiples: [3, 5]) == 2318)
    }

    @Test("a much larger limit", .enabled(if: RUNALL))
    func aMuchLargerLimit() {
        #expect(toLimit(1000, inMultiples: [3, 5]) == 233168)
    }

    @Test("three factors", .enabled(if: RUNALL))
    func threeFactors() {
        #expect(toLimit(20, inMultiples: [7, 13, 17]) == 51)
    }

    @Test("factors not relatively prime", .enabled(if: RUNALL))
    func factorsNotRelativelyPrime() {
        #expect(toLimit(15, inMultiples: [4, 6]) == 30)
    }

    @Test("some pairs of factors relatively prime and some not", .enabled(if: RUNALL))
    func somePairsOfFactorsRelativelyPrimeAndSomeNot() {
        #expect(toLimit(150, inMultiples: [5, 6, 8]) == 4419)
    }

    @Test("one factor is a multiple of another", .enabled(if: RUNALL))
    func oneFactorIsAMultipleOfAnother() {
        #expect(toLimit(51, inMultiples: [5, 25]) == 275)
    }

    @Test("much larger factors", .enabled(if: RUNALL))
    func muchLargerFactors() {
        #expect(toLimit(10000, inMultiples: [43, 47]) == 2203160)
    }

    @Test("all numbers are multiples of 1", .enabled(if: RUNALL))
    func allNumbersAreMultiplesOf1() {
        #expect(toLimit(100, inMultiples: [1]) == 4950)
    }

    @Test("no factors means an empty sum", .enabled(if: RUNALL))
    func noFactorsMeansAnEmptySum() {
        #expect(toLimit(10000, inMultiples: []) == 0)
    }

    @Test("the only multiple of 0 is 0", .enabled(if: RUNALL))
    func theOnlyMultipleOf0Is0() {
        #expect(toLimit(1, inMultiples: [0]) == 0)
    }

    @Test("the factor 0 does not affect the sum of multiples of other factors", .enabled(if: RUNALL))
    func theFactor0DoesNotAffectTheSumOfMultiplesOfOtherFactors() {
        #expect(toLimit(4, inMultiples: [3, 0]) == 3)
    }

    @Test(
        "solutions using include-exclude must extend to cardinality greater than 3",
        .enabled(if: RUNALL)
    )
    func solutionsUsingIncludeExcludeMustExtendToCardinalityGreaterThan3() {
        #expect(toLimit(10000, inMultiples: [2, 3, 5, 7, 11]) == 39614537)
    }
}

final class SumOfMultiplesPerformanceTests: XCTestCase {
    func testPerformanceWithLargeAndRedundantMultiples() throws {
        self.measure {
            _ = toLimit(
                10_000_000,
                inMultiples: [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 2_000, 3_000, 5_000]
            )
        }
    }
}
