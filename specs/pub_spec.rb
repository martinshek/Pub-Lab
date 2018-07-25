require("Minitest/autorun")
require("Minitest/rg")

require_relative("../pub.rb")
require_relative("../drink.rb")

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


  end
