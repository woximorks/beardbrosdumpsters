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
    start_date = params.fetch(:start_date, Date.today).to_date
    @rented_dumpsters = RentedDumpster.where(start_time: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
  end
end
