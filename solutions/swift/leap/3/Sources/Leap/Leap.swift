class Year {
    var isLeapYear: Bool

    init(calendarYear year: Int) {
        self.isLeapYear = year.isMultiple(of: 100) ? year.isMultiple(of: 400) : year.isMultiple(of: 4)
    }
}
