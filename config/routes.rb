Rails.application.routes.draw do

  #show all restaurants
  root to: 'restaurants#index'
  resources :restaurants
  resources :reviews, only: [:create]

  # #add a new restaurant
  # get 'restaurants/new', to: 'restaurants#new'
  # post 'restaurants/new', to: 'restaurants#create'

  # # see the details of a specific restaurant
  # get 'restaurants/:id', to: 'restaurant#find'

  # # add a new review to a restaurant
  # get 'restaurants/:restaurant_id/review/new', to: 'review#new'
  # post 'restaurants/:restaurant_id/review', to: 'review#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

#   resources :restaurants do
#     # need to nest these because we need the restaurant ID
#     resources :reviews, only: [:new, :create, :index]

#   # don't need to nest this because we don't need the restaurant ID
#   resources :reviews, only: [:show, :destroy]
# end
