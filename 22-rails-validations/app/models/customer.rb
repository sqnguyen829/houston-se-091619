class Customer < ApplicationRecord
    has_many :reviews
    has_many :restaurants, through: :reviews

    validates :name, presence: true
end


# Implement a validation in your models to have a unique name
    # Go to lecture exercises folder
    # Git pull
    # Cd into 22-rails-validation folder
    # bundle install

# Use Rails documentation
# Show us it is validating
