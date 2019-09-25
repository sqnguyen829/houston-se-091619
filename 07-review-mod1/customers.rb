# Customer.new() should create a new customer with a name and account_type

# Customer#name and Customer#account_type should work

# Customer.all should return all customer instances

# Customer#accounts should return all account that belong to the customer

# Customer#banks should return all banks that are associated with the customer

# Customer#balance should return total balance from all the accounts from all the bank that are associated with the customer



class Customer

    attr_accessor :name, :account_type

    @@all = []

    def initialize(name, account_type)
        @name = name
        @account_type = account_type

        @@all << self
    end

    def self.all
        @@all
    end

    def accounts
        Account.all.select do |acc|
            acc.customer == self
        end
    end

    def banks
        accounts.map do |acc|
            acc.bank
        end
    end

    def balance
        total = 0 

        accounts.each do |acc|
            total += acc.balance
        end

        total
    end

end