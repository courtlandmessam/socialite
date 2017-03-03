class VenuesController < ApplicationController
  before_action :authenticate_user!

  def index
    @venues = Venue.all
  end

  def show
    @venue = Venue.find(params[:id])
  end

  def new
    @venue = Venue.new
  end

  def edit
    @venue = Venue.find(params[:id])
  end

  def create
    @venue = Venue.create(venue_params)
    redirect_to venues_path
  end

  def update
    @venue = Venue.find(params[:id])

    respond_to do |format|
      if @venue.update(venue_params)
        format.html { redirect_to @venue, notice: 'Venue was successfully updated.' }
        format.json { render :show, status: :ok, location: @venue }
      else
        format.html { render :edit }
        format.json { render json: @venue.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def venue_params
      params.require(:venue).permit(:image, :title, :location, :description)
    end
end
