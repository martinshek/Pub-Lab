require("Minitest/autorun")
require("Minitest/rg")

require_relative("../drink.rb")

class TestDrink < MiniTest::Test

  def setup
    @drink1 = Drink.new("beer", 4)
  end


def test_get_name
  assert_equal("beer", @drink1.name)
end

def test_get_price
  assert_equal(4, @drink1.price)
end




end
