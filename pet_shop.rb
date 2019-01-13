def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount)
  return pet_shop[:admin][:total_cash] += amount
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, increase)
  return pet_shop[:admin][:pets_sold] += increase
end

def stock_count(pet_shop)
  return pet_shop[:pets].count
end

def pets_by_breed(pet_shop, breed)
  return  pet_shop[:pets].select { |pet| pet[:breed] == breed }
end

def find_pet_by_name(pet_shop, name)
  find_pet = pet_shop[:pets].select { |pet| pet[:name] == name }
  return find_pet.count > 0 ? find_pet[0] : nil
end

def remove_pet_by_name(pet_shop, name)
  return pet_shop[:pets].delete_if { |pet| pet[:name] == name }
end

def add_pet_to_stock(pet_shop, new_pet)
  return pet_shop[:pets].push new_pet
end

def customer_cash(customers)
  return customers[:cash]
end

def remove_customer_cash(customers, amount)
    return customers[:cash] -= amount
end

def customer_pet_count(customers)
    return customers[:pets].count
end

def add_pet_to_customer(customers, new_pet)
    return customers[:pets].push new_pet
end

  # # OPTIONAL

def customer_can_afford_pet(customers, pet)
    return customers[:cash] >= pet[:price] ? true : false
end
