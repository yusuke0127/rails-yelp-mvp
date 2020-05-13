Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get the form
  get '/restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # posting the form
  post 'restaurants', to: 'restaurants#create'
  # get all of restaurant
  get '/restaurants', to: 'restaurants#index'
  # get a restaurant
  get '/restaurants/:id', to: 'restaurants#show', as: :restaurant


  # ROUTES for reviews
  # getting the form for the reviews
  get '/restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: :new_restaurant_review
  # posting the reviews
  post '/restaurants/:restaurant_id/reviews', to: 'reviews#create', as: :restaurant_reviews
end


