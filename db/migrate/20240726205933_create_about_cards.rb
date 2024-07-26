class CreateAboutCards < ActiveRecord::Migration[7.1]
  def change
    create_table :about_cards do |t|
      t.string :about_card_title
      t.text :about_card_description
      t.string :about_card_image_url

      t.timestamps
    end
  end
end
