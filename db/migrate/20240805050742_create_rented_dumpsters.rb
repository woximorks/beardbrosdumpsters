class CreateRentedDumpsters < ActiveRecord::Migration[7.1]
  def change
    create_table :rented_dumpsters do |t|
      t.string :rented_dumpster_name
      t.string :rented_dumpster_address
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
