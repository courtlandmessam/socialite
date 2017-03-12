Rails.application.routes.draw do
  resources :deals do
    member do
    post :vote_up
    post :vote_reset
    end
  end
  
  resources :comments 
  resources :events do
    member do
    post :vote_up
    post :vote_reset
    end
  end
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :venues do
  	member do
    post :vote_up
    post :vote_down
    post :vote_reset
  	end
    resources :comments do
      member do
      post :vote_up
      post :vote_down
      post :vote_reset
      end
    end
  end
  
  root 'venues#index'
end
