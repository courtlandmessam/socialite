Rails.application.routes.draw do
  resources :comments
  resources :events
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :venues do
  	member do
    post :vote_up
  	end
    resources :comments
  end
  
  root 'venues#index'
end
