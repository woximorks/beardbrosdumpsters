class CreateLandingCards < ActiveRecord::Migration[7.1]
  def change
    create_table :landing_cards do |t|
      t.string :title
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
