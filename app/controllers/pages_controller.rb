class PagesController < ApplicationController
  def home
    @site_vars = SiteVar.all
    @about_cards = AboutCard.all
    @pricing_cards = PricingCard.all
    @articles = Article.all
  end

  def pricing
    @site_vars = SiteVar.all
    @pricing_cards = PricingCard.all
  end

  def events
    @site_vars = SiteVar.all
    @articles = Article.all
  end

  def schedule
    @site_vars = SiteVar.all
    @pricing_cards = PricingCard.all
  end
end
