Rails.application.routes.draw do
  devise_for :users
  resources :profiles, only: [:edit, :update]
  root 'planets_dignities#new'
  get '/planets_dignities/', to: 'planets_dignities#show'
end
