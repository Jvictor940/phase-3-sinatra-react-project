puts "Deleting User/Bank/Account data..."
User.destroy_all
Bank.destroy_all
Account.destroy_all

puts "Creating users..."
jackie_liang = User.create(full_name: "Jackie Liang", country_of_residence: "UK")
jane_doe = User.create(full_name: "Jane Doe", country_of_residence: "USA")

puts "Creating banks..."

bank_of_america = Bank.create(name: "Bank of America", market_capitalization: 338610000000, country: "USA")
citigroup = Bank.create(name: "Citigroup", market_capitalization: 142110000000, country: "USA")
jp_morgan_chase = Bank.create(name: "JPMorgan Chase", market_capitalization: 461340000000, country: "USA")
royal_bank_of_canada = Bank.create(name: "Royal Bank of Canada", market_capitalization: 145180000000, country: "Canada")
china_construction_bank = Bank.create(name: "China Construction Bank", market_capitalization: 184590000000, country: "China")
icbc = Bank.create(name: "ICBC", market_capitalization: 241370000000, country: "China")
cm_bank = Bank.create(name: "CM Bank", market_capitalization: 204110000000, country: "China")
morgan_stanley = Bank.create(name: "Morgan Stanley", market_capitalization: 181280000000, country: "USA")
agricultural_bank_of_china = Bank.create(name: "Agricultural Bank of China", market_capitalization: 155140000000, country: "China")
wells_fargo = Bank.create(name: "Wells Fargo", market_capitalization: 194600000000, country: "USA")


puts "Creating Accounts..."

Account.create(
  balance: 125000,
  label: "Jackie Personal",
  account_type: "Checking",
  user_id: jackie_liang.id,
  bank_id: bank_of_america.id
)

Account.create(
  balance: 250000,
  label: "Jackie Savings",
  account_type: "Savings",
  user_id: jackie_liang.id,
  bank_id: bank_of_america.id
)

Account.create(
  balance: 1000.78,
  label: "Jane Checking",
  account_type: "Checking",
  user_id: jane_doe.id,
  bank_id: wells_fargo.id
)

Account.create(
  balance: 1200.78,
  label: "Jane Saving",
  account_type: "Savings",
  user_id: jane_doe.id,
  bank_id: wells_fargo.id
)

# ***********************************************************
puts "✅ Done seeding!"
