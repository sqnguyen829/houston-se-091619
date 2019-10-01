class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :customer_id
      t.integer :bakery_id
      t.string :content
    end
  end
end
