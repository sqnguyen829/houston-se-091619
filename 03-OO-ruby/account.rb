require 'pry'

class Account
    # attr_reader :owner, :amount
    # attr_writer :owner, :amount
    attr_accessor :owner, :amount

    @@all = []

    # puts self

    def initialize(name,number)
        @owner = name
        @amount = number
        # puts self

        # @@all.push(self)
        @@all << self

    end

    def increaseAmount
        # puts @amount
        @amount = @amount + 500
        
    end

    def self.test
        puts self
    end

    # def owner=(name)
    #     @owner = name
    # end

    # def owner
    #     @owner
    # end

    # def amount=(number)
    #     @amount = number
    # end

    # def amount
    #     @amount
    # end


    def self.all
        @@all
    end


end

binding.pry
0