class ManagerMailer < ApplicationRecord
	default from: "newmanager@socialite.brogrammers.co"
  def send_enabled_message(user)
    @user = user
    mail(:to => user.email, :subject => "Have Been Confirmed! Welcome to Socialite Gold!")
  end
  def send_new_user_message(user)
    @user = user
    mail(:to => 'messamcourtland@gmail.com', :subject => "New Manager created please review and enable.")
  end
end
end
