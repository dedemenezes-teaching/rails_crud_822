Rails.application.routes.draw do

  # get 'restaurants', to: 'restaurants#index', as: :restaurants

  # get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant

  # post 'restaurants', to: 'restaurants#create'

  # # EDIT RESTAURANT
  # get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant

  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # patch 'restaurants/:id', to: 'restaurants#update'

  # delete 'restaurants/:id', to: 'restaurants#destroy'

  resources :restaurants

end
