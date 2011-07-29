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
    ## TODO Exercise 1: Implement this method by making tests pass, try to incrementally implement the method. Choose one test and write just enough code to make it pass, then move on to the next test.
    #raise NotImplementedError
    
    if @single
      if @age > 64 and @income <= ElderlyDiscountCalculator::ELDERLY_DISCOUNT_MAXIMUM_INCOME 
        ElderlyDiscountCalculator::ELDERLY_DISCOUNT_SINGLE
      else
        0
      end
    else
      if @age > 64 and @income <= ElderlyDiscountCalculator::ELDERLY_DISCOUNT_MAXIMUM_INCOME 
        ElderlyDiscountCalculator::ELDERLY_DISCOUNT
      else
        0
      end
    end

    
    
  end

  # Find out if a person is eligible for elderly discount, based on input
  #
  # @return [Boolean] True when person eligible for elderly discount
  def eligible?
    # TODO Exercise 2: Create implementation for this method in a TDD-way
    raise NotImplementedError
  end
end
