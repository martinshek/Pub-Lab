class Pub

  attr_reader :name, :till

  def initialize (name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks
  end

  def count_drinks
    return @drinks.length
  end

  def supply_drink
    return @drinks.shift
  end

  def add_drink_to_pub(drink)
    @drinks.push(drink)
  end

  def add_money_to_till(amount)
    @till += amount
  end

end
