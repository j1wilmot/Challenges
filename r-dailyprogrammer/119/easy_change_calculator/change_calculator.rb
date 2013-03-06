class ChangeCalculator

  QUARTER_VALUE = 0.25
  DIME_VALUE    = 0.10
  NICKEL_VALUE  = 0.05
  PENNY_VALUE   = 0.01

  def initialize(total)
    @total = total
  end

  def calculate
    "Quarters: #{quarters}\nDimes: #{dimes}\nNickels: #{nickels}\nPennies: #{pennies}\n"
  end

  def quarters
    @quarters ||= (@total / QUARTER_VALUE).floor
  end

  def quarters_value
    @quarters_value ||= quarters * QUARTER_VALUE
  end

  def dimes
    @dimes ||= ((@total - quarters_value) / DIME_VALUE).floor
  end

  def dimes_value
    @dimes_value ||= @dimes_value = dimes * DIME_VALUE
  end

  def nickels
    @nickels ||= ((@total - quarters_value - dimes_value) / NICKEL_VALUE).floor
  end

  def nickel_value
    @nickel_value ||= nickels * NICKEL_VALUE
  end

  def pennies
    @pennies ||= ((@total - quarters_value - dimes_value - nickel_value) / PENNY_VALUE).ceil
  end

  def penny_value
    @pennies_value ||= pennies * PENNY_VALUE
  end
end
