json.extract! landing_card, :id, :title, :description, :image, :created_at, :updated_at
json.url landing_card_url(landing_card, format: :json)
