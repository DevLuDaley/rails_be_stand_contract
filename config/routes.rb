Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      post '/login',    to: 'sessions#create'
      post '/logout',   to: 'sessions#destroy'
      get '/logged_in', to: 'sessions#is_logged_in?'
        resources :users, only: [:create, :show, :index] do 
        resources :items, only: [:create, :show, :index, :destroy]
    end
    
        resources :contracts, :posts, :goals
        resources :users, only: [:create, :show, :index]

    end
  end
end
# rails g model Contract date:date standup:text sitdown:text