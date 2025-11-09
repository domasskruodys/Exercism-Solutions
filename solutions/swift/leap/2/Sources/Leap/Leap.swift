class Year {
    var year: Int
    
    init(calendarYear year: Int) {
        self.year = year
    }
    
    var isLeapYear: Bool {
        return year.isMultiple(of: 4) && (year.isMultiple(of: 400) || !year.isMultiple(of: 100))
    }
}
