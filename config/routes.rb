Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #API for authentication
    # namespace :api, defaults: { format: :json } do
    #   namespace :v1 do
        #Devise routes for API clients (custom sessions controller)
  post 'login', to: 'users#login'
end
