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

  def check_age_of_customer(customer)
    if customer.age >= 18
      return true
    else
      return false
    end
  end


  def sells_drink(customer)
    if check_age_of_customer(customer)
    # thepub should remove a drink
    # that drink should go in the belly
    # the pubs till should go up by the price of the drink
    # the customers wallet should go down by the price of the drink
    drink = supply_drink()
    customer.add_drink_to_belly(drink)

    customer.remove_cash(drink.price) #takes omney from custoemrs
    add_money_to_till(drink.price) #this take money from till

    # cost_of_drink = @drink.price
    # amount_in_wallet = @customer.wallet
    # new_amount_in_wallet = amount_in_wallet - cost_of_drink
    # @wallet(new_amount_in_wallet)
    # amount_in_till = @pub.till
    # new_amount_in_till = amount_in_till + cost_of_drink
    # @pub.till(new_amount_in_till)
  else
    return
  end
  end


end
