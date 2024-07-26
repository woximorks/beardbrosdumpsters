json.extract! pricing_card, :id, :pricing_card_title, :pricing_card_description, :pricing_card_image_url, :pricing_card_total_cost, :created_at, :updated_at
json.url pricing_card_url(pricing_card, format: :json)
