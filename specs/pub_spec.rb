require("Minitest/autorun")
require("Minitest/rg")

require_relative("../pub.rb")
require_relative("../drink.rb")
require_relative("../customer.rb")

class TestPub < MiniTest::Test

  def setup
    @drink1 = Drink.new("Wine", 8)
    @drink2 = Drink.new("Vodka", 5)
    @drink3 = Drink.new("Shots", 2)
    @pub = Pub.new("Wetherspoons", 100, [@drink1, @drink2, @drink3])
  end

  def test_get_name
    assert_equal("Wetherspoons", @pub.name)
  end

  def test_get_till_amount
    assert_equal(100, @pub.till)
  end

  def test_get_number_of_drinks
    assert_equal(3, @pub.count_drinks)
  end

  def test_pub_have_drink
    supplied_drink = @pub.supply_drink()
    assert_equal(Drink, supplied_drink.class)
    assert_equal(2, @pub.count_drinks)
  end

  def test_add_drink_to_pub
    drink = Drink.new("shandy", 4)
    @pub.add_drink_to_pub(drink)
    assert_equal(4, @pub.count_drinks)
  end

  def test_get_customer_age
    customernew = Customer.new("name", 30, 35)
    assert_equal(35, customernew.age)
  end


  def test_check_age_of_customer
  customernew = Customer.new("name", 30, 35)
  result = @pub.check_age_of_customer(customernew)
  assert_equal(true, result)
  end

  def test_pub_sell_drink_to_customer
  # Arrange
  customernew = Customer.new("name", 30, 35)
  # Act
  result = @pub.check_age_of_customer(customernew)
  @pub.add_drink_to_pub(@drink1)
  @pub.sells_drink(customernew)
  # Assert
  assert_equal(true, result)
  assert_equal(1, customernew.belly_count)
  assert_equal(108, @pub.till)
  assert_equal(22, customernew.wallet)
  # assert_equal(2, @pub.count_drinks)
  end



end
