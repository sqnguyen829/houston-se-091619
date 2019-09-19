require 'pry'

require_relative 'user.rb'
require_relative 'tweet.rb'


u1 = User.new("coffe_dad")
u2 = User.new("chai_dad")

t1 = Tweet.new("I like coffee", u1)
t2 = Tweet.new("I like Tea", u2)
t3 = Tweet.new("coffee love me", u1)
t4 = Tweet.new("Tea on a rainy day", u2)

u1.post_tweet("black coffee")


binding.pry
0