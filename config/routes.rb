Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
      root to: 'templates#index'
      get '/restaurantinfo' => 'templates#inforestaurant'
      get '/shipper' => 'templates#shipper'


      get '/signup' => 'users#new'
      post '/signup' => 'users#create'

      get '/login', to: 'sessions#new'
      post '/login',  to: 'sessions#create'
      delete '/logout', to: 'sessions#destroy'


      post 'line_items' => "line_items#create"
      resources :restaurants
      resources :products
end
