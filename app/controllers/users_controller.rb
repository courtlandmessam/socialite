class UsersController < ApplicationController
	
def show 
	@venues = current_user.venues
	@events = current_user.events
end

end
