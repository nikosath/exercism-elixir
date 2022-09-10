defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    before_discount - (before_discount * discount / 100)
  end

  @spec monthlcdy_rate(number, number) :: integer
  def monthly_rate(hourly_rate, discount) do
    monthly_rate = daily_rate_after_discount(hourly_rate, discount) * 22
    trunc(Float.ceil(monthly_rate))
  end

  @spec days_in_budget(number, number, number) :: float
  def days_in_budget(budget, hourly_rate, discount) do
    days_in_budget = budget / daily_rate_after_discount(hourly_rate, discount)
    Float.floor(days_in_budget, 1)
  end

  def daily_rate_after_discount(hourly_rate, discount) do
    apply_discount(daily_rate(hourly_rate), discount)
  end
end
