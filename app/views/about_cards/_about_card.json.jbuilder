json.extract! about_card, :id, :about_card_title, :about_card_description, :about_card_image_url, :created_at, :updated_at
json.url about_card_url(about_card, format: :json)
