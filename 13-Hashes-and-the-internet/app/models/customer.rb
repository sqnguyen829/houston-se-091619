class Customer < ActiveRecord::Base


    has_many :reviews
    has_many :bakeries, through: :reviews


    # def reviews
    #     Review.where(customer_id: self.id)
    # end

end