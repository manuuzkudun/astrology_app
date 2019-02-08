Rails.application.routes.draw do
  root 'planets_dignities#new'
  get '/planets_dignities/', to: 'planets_dignities#show'
end
