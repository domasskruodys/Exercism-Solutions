class Year {
    var year: Int
    
    init(calendarYear year: Int) {
        self.year = year
    }
    
    var isLeapYear: Bool {
        if year.isMultiple(of: 100) {
            if year.isMultiple(of: 400) {
                return true
            } else {
                return false
            }
        } else if year.isMultiple(of: 4) {
            return true
        } else { return false }
    }
}
