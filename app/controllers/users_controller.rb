class UsersController < ApplicationController
	
def show 
	@user = current_user
	@venues = current_user.venues
	@events = current_user.events
	@deals = current_user.deals

end

end
