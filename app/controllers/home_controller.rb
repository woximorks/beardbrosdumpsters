class HomeController < ApplicationController
  def index
    @featured_landing_cards = LandingCard.limit(3)
  end
end
