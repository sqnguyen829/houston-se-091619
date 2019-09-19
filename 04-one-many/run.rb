require 'pry'

require_relative 'user.rb'
require_relative 'tweet.rb'


u1 = User.new("coffe_dad")
u2 = User.new("chai_dad")

t1 = Tweet.new("I like coffee", u1)
t2 = Tweet.new("I like Tea", u2)



binding.pry
0