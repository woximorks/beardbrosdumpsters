class RentedDumpstersController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_rented_dumpster, only: %i[ show edit update destroy ]

  # GET /rented_dumpsters or /rented_dumpsters.json
  def index
    @rented_dumpsters = RentedDumpster.all
  end

  # GET /rented_dumpsters/1 or /rented_dumpsters/1.json
  def show
  end

  # GET /rented_dumpsters/new
  def new
    @rented_dumpster = RentedDumpster.new
  end

  # GET /rented_dumpsters/1/edit
  def edit
  end

  # POST /rented_dumpsters or /rented_dumpsters.json
  def create
    @rented_dumpster = RentedDumpster.new(rented_dumpster_params)

    respond_to do |format|
      if @rented_dumpster.save
        format.html { redirect_to rented_dumpster_url(@rented_dumpster), notice: "Rented dumpster was successfully created." }
        format.json { render :show, status: :created, location: @rented_dumpster }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rented_dumpster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rented_dumpsters/1 or /rented_dumpsters/1.json
  def update
    respond_to do |format|
      if @rented_dumpster.update(rented_dumpster_params)
        format.html { redirect_to rented_dumpster_url(@rented_dumpster), notice: "Rented dumpster was successfully updated." }
        format.json { render :show, status: :ok, location: @rented_dumpster }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rented_dumpster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rented_dumpsters/1 or /rented_dumpsters/1.json
  def destroy
    @rented_dumpster.destroy!

    respond_to do |format|
      format.html { redirect_to rented_dumpsters_url, notice: "Rented dumpster was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rented_dumpster
      @rented_dumpster = RentedDumpster.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rented_dumpster_params
      params.require(:rented_dumpster).permit(:rented_dumpster_name, :rented_dumpster_address, :start_time, :end_time)
    end
end
