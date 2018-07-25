require("Minitest/autorun")
require("Minitest/rg")

require_relative("../pub.rb")
require_relative("../drink.rb")

class TestPub < MiniTest::Test

  def setup
    @pub = Pub.new("Wetherspoons", 100, [@drink1, @drink2, @drink3])
    @drink1 = Drink.new("Wine", 8)
    @drink2 = Drink.new("Vodka", 5)
    @drink3 = Drink.new("Shots", 2)
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


end
