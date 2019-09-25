require 'pry'
require_relative './customers'
require_relative './banks'
require_relative './accounts'

c1 = Customer.new("Chandon","Saving")
c2 = Customer.new("Patrick","Saving")
c3 = Customer.new("Fernando","Saving")
c4 = Customer.new("Damini","Saving")


b1 = Bank.new("Chase")
b2 = Bank.new("BOFA")
b3 = Bank.new("Wells Fargo")


a1 = Account.new(c1,b1,5000)
a2 = Account.new(c1,b2,5000)
a3 = Account.new(c2,b1,5000)
a4 = Account.new(c2,b3,5000)
a5 = Account.new(c3,b1,5000)
a6 = Account.new(c4,b3,5000)



binding.pry
0
