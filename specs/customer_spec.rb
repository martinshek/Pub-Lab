require("Minitest/autorun")
require("Minitest/rg")

require_relative("../customer.rb")
require_relative("../pub.rb")
require_relative("../drink.rb")

class TestCustomer < MiniTest::Test

def setup
  @customer = Customer.new("Boab", 20, 30)
end

def test_get_name
assert_equal("Boab", @customer.name)
end

def test_get_wallet
  assert_equal(20, @customer.wallet)
end

def test_how_many_drinks_in_belly
assert_equal(0, @customer.belly_count)
end


# def test_customer_get_drink_from_pub
# # Arrange
# @pub1 = Pub.new("Jacks", 200, [])
# @drink1 = Drink.new("bud", 4)
# # Act
# result = @pub1.check_age_of_customer(@customer)
# @pub1.add_drink_to_pub(@drink1)
# @customer.gets_drink(@pub1)
# # Assert
# assert_equal(true, result)
# assert_equal(1, @customer.belly_count)
# assert_equal(204, @pub1.till)
# assert_equal(16, @customer.wallet)
# # assert_equal(2, @pub.count_drinks)
# end

def test_get_customer_age
  assert_equal(30, @customer.age)
end


end
