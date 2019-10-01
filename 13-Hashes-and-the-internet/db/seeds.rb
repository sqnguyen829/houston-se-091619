require 'rest-client'
require 'pry'
require 'json'

Customer.destroy_all
Bakery.destroy_all
Review.destroy_all
Book.destroy_all

url = "https://www.googleapis.com/books/v1/volumes?q=ruby+programming"

response = RestClient.get(url)

result = JSON.parse(response)


result["items"].each do |item|
    # puts item["volumeInfo"]["title"]
    Book.create(title: item["volumeInfo"]["title"])
end

# binding.pry

c1 = Customer.create(name:"Fernando")
c2 = Customer.create(name:"Steven")

b1 = Bakery.create(name:"85C", location: "Houston")
b2 = Bakery.create(name:"Main_street", location: "Dallas")

Review.create(customer_id: c1.id ,bakery_id: b1.id, content:"nice", rating:4)
Review.create(customer_id: c1.id,bakery_id: b2.id, content:"nice", rating:3)
Review.create(customer_id: c2.id,bakery_id: b1.id, content:"nice", rating:3)







