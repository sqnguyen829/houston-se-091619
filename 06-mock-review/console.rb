require 'pry'
require_relative './book'
require_relative './author'
require_relative './book_author.rb'

a1 = Author.new("DHH")
a2 = Author.new("Patrick")
a3 = Author.new("Damini")

b1 = Book.new("ruby", 5000)
b2 = Book.new("Vegan baking", 10000 )


ba1 = BookAuthor.new(b1, a1)
ba2 = BookAuthor.new(b2,a2)
ba3 = BookAuthor.new(b2,a3)




binding.pry
0
