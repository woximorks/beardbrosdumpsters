json.extract! pricing_card, :id, :title, :description, :image, :created_at, :updated_at
json.url pricing_card_url(pricing_card, format: :json)
