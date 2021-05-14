Rails.application.routes.draw do
  post '/users',    to: 'users#create'
  post '/login',    to: 'users#create'
  post '/logout',   to: 'users#destroy'
  get '/logged_in', to: 'users#is_logged_in?'
  # post '/logout',   to: 'sessions#destroy'
  # get '/logged_in', to: 'sessions#is_logged_in?'
  
  namespace :api do
    namespace :v1 do
      # root :to => 'index#index'

    #     resources :users, only: [:create, :show, :index] do 
    #     resources :items, only: [:create, :show, :index, :destroy]
    # end
    
        resources :contracts, :posts, :goals, :users
        resources :sessions, only: [:create]
  
        # resources :registrations, only: [:create]
        # delete :logout, to: "sessions#logout"
        # get :logged_in, to: "sessions#logged_in"
        # root to: "static#home"
        
        # resources :users, only: [:create, :show, :index]

    end
  end
end
# rails g model Contract date:date standup:text sitdown:text