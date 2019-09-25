# Bank.new() should create a new bank with a name

# Bank#name should work

# Bank.all should return all bank instances

# Bank#account should return all account that belong to the bank

# Bank#customers should return all of the Customers that are associated with the bank


class Bank

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def account
        Account.all.select do |acc|
            acc.bank == self
        end
    end

    def customers
        account.map do |acc|
            acc.customer
        end
    end

end