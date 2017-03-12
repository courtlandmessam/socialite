class UsersController < ApplicationController
	
def show 
	@venues = current_user.venues
end

end
