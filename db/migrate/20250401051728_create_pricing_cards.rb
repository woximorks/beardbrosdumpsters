class CreatePricingCards < ActiveRecord::Migration[7.1]
  def change
    create_table :pricing_cards do |t|
      t.string :title
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
