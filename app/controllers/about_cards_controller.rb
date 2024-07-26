class AboutCardsController < ApplicationController
  before_action :set_about_card, only: %i[ show edit update destroy ]

  # GET /about_cards or /about_cards.json
  def index
    @about_cards = AboutCard.all
  end

  # GET /about_cards/1 or /about_cards/1.json
  def show
  end

  # GET /about_cards/new
  def new
    @about_card = AboutCard.new
  end

  # GET /about_cards/1/edit
  def edit
  end

  # POST /about_cards or /about_cards.json
  def create
    @about_card = AboutCard.new(about_card_params)

    respond_to do |format|
      if @about_card.save
        format.html { redirect_to about_card_url(@about_card), notice: "About card was successfully created." }
        format.json { render :show, status: :created, location: @about_card }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @about_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /about_cards/1 or /about_cards/1.json
  def update
    respond_to do |format|
      if @about_card.update(about_card_params)
        format.html { redirect_to about_card_url(@about_card), notice: "About card was successfully updated." }
        format.json { render :show, status: :ok, location: @about_card }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @about_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /about_cards/1 or /about_cards/1.json
  def destroy
    @about_card.destroy!

    respond_to do |format|
      format.html { redirect_to about_cards_url, notice: "About card was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_about_card
      @about_card = AboutCard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def about_card_params
      params.require(:about_card).permit(:about_card_title, :about_card_description, :about_card_image_url)
    end
end
