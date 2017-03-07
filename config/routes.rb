Rails.application.routes.draw do
  resources :comments
  resources :events
  devise_for :users, patch_names: {sign_in: "login", sign_out: "logout"}, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :venues do
    resources :comments
  end
  root 'venues#index'
end
