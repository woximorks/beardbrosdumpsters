class CreatePricingCards < ActiveRecord::Migration[7.1]
  def change
    create_table :pricing_cards do |t|
      t.string :pricing_card_title
      t.text :pricing_card_description
      t.string :pricing_card_image_url
      t.integer :pricing_card_total_cost

      t.timestamps
    end
  end
end
