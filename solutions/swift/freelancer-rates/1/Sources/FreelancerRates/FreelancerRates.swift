func dailyRateFrom(hourlyRate: Int) -> Double {
  let workhoursPerDay: Int = 8
  return Double(hourlyRate * workhoursPerDay)
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
  let workdaysPerMonth: Int = 22
  let baseMonthlyRate: Double = dailyRateFrom(hourlyRate: hourlyRate) * Double(workdaysPerMonth)
  let discountedMonthlyRate: Double = baseMonthlyRate - baseMonthlyRate * (discount / 100.0)
  return discountedMonthlyRate.rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
  let baseDailyRate: Double = dailyRateFrom(hourlyRate: hourlyRate)
  let discountedDailyRate: Double = baseDailyRate - baseDailyRate * (discount / 100.0)
  return (budget / discountedDailyRate).rounded(.down)
}
