class CreateRentals < ActiveRecord::Migration[7.1]
  def change
    create_table :rentals do |t|
      t.string :title
      t.string :address
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
