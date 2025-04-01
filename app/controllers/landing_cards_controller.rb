class LandingCardsController < ApplicationController
  before_action :set_landing_card, only: %i[ show edit update destroy ]

  # GET /landing_cards or /landing_cards.json
  def index
    @landing_cards = LandingCard.all
  end

  # GET /landing_cards/1 or /landing_cards/1.json
  def show
  end

  # GET /landing_cards/new
  def new
    @landing_card = LandingCard.new
  end

  # GET /landing_cards/1/edit
  def edit
  end

  # POST /landing_cards or /landing_cards.json
  def create
    @landing_card = LandingCard.new(landing_card_params)

    respond_to do |format|
      if @landing_card.save
        format.html { redirect_to @landing_card, notice: "Landing card was successfully created." }
        format.json { render :show, status: :created, location: @landing_card }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @landing_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /landing_cards/1 or /landing_cards/1.json
  def update
    respond_to do |format|
      if @landing_card.update(landing_card_params)
        format.html { redirect_to @landing_card, notice: "Landing card was successfully updated." }
        format.json { render :show, status: :ok, location: @landing_card }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @landing_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /landing_cards/1 or /landing_cards/1.json
  def destroy
    @landing_card.destroy!

    respond_to do |format|
      format.html { redirect_to landing_cards_path, status: :see_other, notice: "Landing card was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_landing_card
      @landing_card = LandingCard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def landing_card_params
      params.require(:landing_card).permit(:title, :description, :image)
    end
end
