# Account.new() should create a new account that takes an customer instance, bank instance and balance

# Account#customer, Account#bank and Account#balance should work

# Account.all should return all account instances


class Account

   # attr_accessor :customer, :bank, :balance
   attr_reader :customer, :bank
   attr_accessor :balance

   @@all = []

   def initialize(customer, bank, balance)
      @customer = customer
      @bank = bank
      @balance = balance

      @@all << self
   end

   def self.all
      @@all
   end
end