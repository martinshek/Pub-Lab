require("Minitest/autorun")
require("Minitest/rg")

require_relative("../customer.rb")

class TestCustomer < MiniTest::Test

def setup
  @customer = Customer.new("Boab", 20)
end

def test_get_name
assert_equal("Boab", @customer.name)
end

def test_get_wallet
  assert_equal(20, @customer.wallet)
end

end
