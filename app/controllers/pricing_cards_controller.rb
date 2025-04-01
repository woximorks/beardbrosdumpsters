class PricingCardsController < ApplicationController
  before_action :set_pricing_card, only: %i[ show edit update destroy ]

  # GET /pricing_cards or /pricing_cards.json
  def index
    @pricing_cards = PricingCard.all
  end

  # GET /pricing_cards/1 or /pricing_cards/1.json
  def show
  end

  # GET /pricing_cards/new
  def new
    @pricing_card = PricingCard.new
  end

  # GET /pricing_cards/1/edit
  def edit
  end

  # POST /pricing_cards or /pricing_cards.json
  def create
    @pricing_card = PricingCard.new(pricing_card_params)

    respond_to do |format|
      if @pricing_card.save
        format.html { redirect_to @pricing_card, notice: "Pricing card was successfully created." }
        format.json { render :show, status: :created, location: @pricing_card }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pricing_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pricing_cards/1 or /pricing_cards/1.json
  def update
    respond_to do |format|
      if @pricing_card.update(pricing_card_params)
        format.html { redirect_to @pricing_card, notice: "Pricing card was successfully updated." }
        format.json { render :show, status: :ok, location: @pricing_card }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pricing_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pricing_cards/1 or /pricing_cards/1.json
  def destroy
    @pricing_card.destroy!

    respond_to do |format|
      format.html { redirect_to pricing_cards_path, status: :see_other, notice: "Pricing card was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pricing_card
      @pricing_card = PricingCard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pricing_card_params
      params.require(:pricing_card).permit(:title, :description, :image)
    end
end
