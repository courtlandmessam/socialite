class VenuesController < ApplicationController
  before_action :authenticate_user!

  def index
    @venues = Venue.all
    @user = current_user
  end

  def show
    @venue = Venue.find(params[:id])
    @user = current_user
  end

  def new
    @venue = current_user.venues.build
  end

  def edit
    @venue = Venue.find(params[:id])
  end

  def create
    @venue = current_user.venues.build(venue_params)

    if @venue.save
      flash[:success] = "Your venue  has been created!"
      redirect_to venues_path
    else
      flash[:alert] = "Your new venue couldn't be created!  Please check the form."
      render :new
    end
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
