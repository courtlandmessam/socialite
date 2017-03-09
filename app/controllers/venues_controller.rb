class VenuesController < ApplicationController
  before_action :authenticate_user!
  before_action :owned_venue, only: [:edit, :update, :destroy]


  def index
    @venues = Venue.all.order("title").paginate(:page => params[:page], :per_page => 5)
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

  def upvote
    @venue = Venue.find(params[:id])
    @venue.liked_by current_user
    redirect_to venues_path
  end 
  
  def reset
    @venue = Venue.find(params[:id])
    @venue.unvote_by current_user
    redirect_to venues_path
  end

  def downvote
    @venue = Venue.find(params[:id])
    @venue.downvote_from current_user
    redirect_to venues_path
  end 

  private
    def venue_params
      params.require(:venue).permit(:image, :title, :location, :description)
    end

    def owned_venue
      @venue = Venue.find(params[:id])

      unless current_user == @venue.user
        flash[:alert] = "That post doesn't belong to you!"
        redirect_to root_path
      end
    end
end
