require 'elderly_discount_calculator'

describe ElderlyDiscountCalculator do
  describe "#calculate" do
    before(:each) do
      @attrs = {}
    end

    def calculator(attrs={})
      attrs = { income: 36000, age: 65, single: true }.merge(attrs)
      ElderlyDiscountCalculator.new(attrs[:income], attrs[:age], attrs[:single])
    end

    describe "when person 65 or older" do
      before(:each) do
        @attrs[:age] = 65
      end

      describe "and single" do
        before(:each) do
          @attrs[:single] = true
        end

        describe "and earns less than maximum income" do
          before(:each) do
            @attrs[:income] = ElderlyDiscountCalculator::ELDERLY_DISCOUNT_MAXIMUM_INCOME - 1
          end

          it "should receive elderly discount for single person" do
            calculator(@attrs).discount.should == ElderlyDiscountCalculator::ELDERLY_DISCOUNT_SINGLE
          end
        end

        describe "and earns exactly the maximum income" do
          before(:each) do
            @attrs[:income] = ElderlyDiscountCalculator::ELDERLY_DISCOUNT_MAXIMUM_INCOME
          end

          it "should receive elderly discount for single person" do
            calculator(@attrs).discount.should == ElderlyDiscountCalculator::ELDERLY_DISCOUNT_SINGLE
          end
        end

        describe "and earns more than maximum income" do
          before(:each) do
            @attrs[:income] = ElderlyDiscountCalculator::ELDERLY_DISCOUNT_MAXIMUM_INCOME + 1
          end

          it "should not receive elderly discount" do
            calculator(@attrs).discount.should == 0
          end
        end
      end

      describe "and not single" do
        before(:each) do
          @attrs[:single] = false
        end

        describe "and earns less than maximum income" do
          before(:each) do
            @attrs[:income] = ElderlyDiscountCalculator::ELDERLY_DISCOUNT_MAXIMUM_INCOME - 1
          end

          it "should receive elderly discount" do
            calculator(@attrs).discount.should == ElderlyDiscountCalculator::ELDERLY_DISCOUNT
          end
        end

        describe "and earns exactly the maximum income" do
          before(:each) do
            @attrs[:income] = ElderlyDiscountCalculator::ELDERLY_DISCOUNT_MAXIMUM_INCOME
          end

          it "should receive elderly discount" do
            calculator(@attrs).discount.should == ElderlyDiscountCalculator::ELDERLY_DISCOUNT
          end
        end

        describe "and earns more than maximum income" do
          before(:each) do
            @attrs[:income] = ElderlyDiscountCalculator::ELDERLY_DISCOUNT_MAXIMUM_INCOME + 1
          end

          it "should not receive elderly discount" do
            calculator(@attrs).discount.should == 0
          end
        end
      end
    end

    describe "when person younger than 65" do
      before(:each) do
        @attrs[:age] = 64
        @attrs[:income] = ElderlyDiscountCalculator::ELDERLY_DISCOUNT_MAXIMUM_INCOME - 1
        @attrs[:single] = false
      end

      it "should not receive elderly discount" do
        calculator(@attrs).discount.should be_zero
      end
    end
  end

  describe "#eligible?" do
    # it "should have specs"
  end
end
