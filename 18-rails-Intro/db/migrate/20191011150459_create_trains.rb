class CreateTrains < ActiveRecord::Migration[6.0]
  def change
    create_table :trains do |t|
      t.string :destination
      t.integer :time

      t.timestamps
    end
  end
end
