Rails.application.routes.draw do
  resources :comments
  resources :events
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :venues do
  	member do
	    post "like", to: "venues#upvote"
	    post "dislike", to: "venues#downvote"
      post "reset", to: "venues#reset"
	end
    resources :comments
  end
  root 'venues#index'
end
