class UsersController < ApplicationController
	
def show 
	@user = current_user
	@venues = current_user.venues
	@events = current_user.events
	@deals = current_user.deals

	@votes = Vote.all
	@all_comments = Comment.all
	@all_deals = Deal.all
	@all_events = Event.all
	@all_venues = Venue.all

	@user_liked_comments_id = []	
	@votes.each do |vote|
		if vote.voteable_type == 'Comment' && vote.voter_id == current_user.id && vote.vote == true
			@user_liked_comments_id << vote.voteable_id
		end
	end

	@user_liked_deals_id = []
	@votes.each do |vote|
		if vote.voteable_type == 'Deal' && vote.voter_id == current_user.id && vote.vote == true
			@user_liked_deals_id << vote.voteable_id
		end
	end


	@user_liked_events_id = []
	@votes.each do |vote|
		if vote.voteable_type == 'Event' && vote.voter_id == current_user.id && vote.vote == true
			@user_liked_events_id << vote.voteable_id
		end
	end

	@user_liked_venues_id = []
	@votes.each do |vote|
		if vote.voteable_type == 'Venue' && vote.voter_id == current_user.id && vote.vote == true
			@user_liked_venues_id << vote.voteable_id
		end
	end


end

end
