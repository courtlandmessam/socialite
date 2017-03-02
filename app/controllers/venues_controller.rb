class VenuesController < ApplicationController
  def index
    @venues = Venue.all
  end

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.create(venue_params)
    redirect_to venues_path
  end
  private

def venue_params
  params.require(:venue).permit(:image, :title, :location, :description)
end
end
