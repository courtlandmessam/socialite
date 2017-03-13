class ClaimVenuesController < ApplicationController
  before_action :set_claim_venue, only: [:show, :edit, :update, :destroy]
  skip_before_filter :authenticate_user!

  # GET /claim_venues
  # GET /claim_venues.json
  def index
    @claim_venues = ClaimVenue.all
  end

  # GET /claim_venues/1
  # GET /claim_venues/1.json
  def show
  end

  # GET /claim_venues/new
  def new
    @claim_venue = ClaimVenue.new
  end

  # GET /claim_venues/1/edit
  def edit
  end

  # POST /claim_venues
  # POST /claim_venues.json
  def create
    @claim_venue = ClaimVenue.new(claim_venue_params)

    respond_to do |format|
      if @claim_venue.save
        format.html { redirect_to @claim_venue, notice: 'Claim venue was successfully created.' }
        format.json { render :show, status: :created, location: @claim_venue }
      else
        format.html { render :new }
        format.json { render json: @claim_venue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /claim_venues/1
  # PATCH/PUT /claim_venues/1.json
  def update
    respond_to do |format|
      if @claim_venue.update(claim_venue_params)
        format.html { redirect_to @claim_venue, notice: 'Claim venue was successfully updated.' }
        format.json { render :show, status: :ok, location: @claim_venue }
      else
        format.html { render :edit }
        format.json { render json: @claim_venue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /claim_venues/1
  # DELETE /claim_venues/1.json
  def destroy
    @claim_venue.destroy
    respond_to do |format|
      format.html { redirect_to claim_venues_url, notice: 'Claim venue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_claim_venue
      @claim_venue = ClaimVenue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def claim_venue_params
      params.require(:claim_venue).permit(:name, :venue, :email, :phone_number, :other)
    end
end
