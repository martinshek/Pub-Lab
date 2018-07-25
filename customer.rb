class Customer

  attr_reader :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
    @belly = []
  end

def belly_count
  return @belly.length
end

def add_drink_to_belly(drink)
  @belly.push(drink)
end

def gets_drink(pub)
  # thepub should remove a drink
  # that drink should go in the belly
  # the pubs till should go up by the price of the drink
  # the customers wallet should go down by the price of the drink
  drink = pub.supply_drink
  add_drink_to_belly(drink)

  @wallet -= drink.price #takes omney from custoemrs
  pub.add_money_to_till(drink.price) #this take money from till

  # cost_of_drink = @drink.price
  # amount_in_wallet = @customer.wallet
  # new_amount_in_wallet = amount_in_wallet - cost_of_drink
  # @wallet(new_amount_in_wallet)
  # amount_in_till = @pub.till
  # new_amount_in_till = amount_in_till + cost_of_drink
  # @pub.till(new_amount_in_till)
end



end
