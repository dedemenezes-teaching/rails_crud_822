Rails.application.routes.draw do

  # LIST ALL RESTAURANTS
  get 'restaurants', to: 'restaurants#index', as: :restaurants

  # SHOW CREATE FORM
  get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant

  # CREATE THE RESTAURANT
  post 'restaurants', to: 'restaurants#create'

  # EDIT RESTAURANT
  get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant

  # LIST ONE RESTAURANT
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # UPDATE THE RESTAURANT
  patch 'restaurants/:id', to: 'restaurants#update'

  # DESTROY THE RESTAURANT
  delete 'restaurants/:id', to: 'restaurants#destroy'

  # THIS WILL GENERATE ALL THE SEVEN CRUD ROUTES TO US
  # USE IT ONLY ON THE SECOND CHALLENGE!!!!!!
  # resources :restaurants
end
