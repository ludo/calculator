# Calculator for elderly discount
class ElderlyDiscountCalculator
  ELDERLY_DISCOUNT = 739
  ELDERLY_DISCOUNT_SINGLE = 421

  ELDERLY_DISCOUNT_MAXIMUM_INCOME = 34857

  # Constructor
  #
  # @param [Fixnum] income Persn's current income
  # @param [Fixnum] age Current age
  # @param [Boolean] single True when person has no partner
  def initialize(income, age, single)
    @income = income
    @age = age
    @single = single
  end

  # Perform calculation on input to determine the elderly discount
  #
  # @return [Fixnum] Discount
  def discount
    return 0                if @income > ELDERLY_DISCOUNT_MAXIMUM_INCOME or @age < 65
    @single ? ELDERLY_DISCOUNT_SINGLE : ELDERLY_DISCOUNT
  end

  # Find out if a person is eligible for elderly discount, based on input
  #
  # @return [Boolean] True when person eligible for elderly discount
  def eligible?
    # TODO Exercise 2: Create implementation for this method in a TDD-way
    raise NotImplementedError
  end
end
