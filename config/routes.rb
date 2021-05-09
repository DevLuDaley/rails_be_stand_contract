Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :contracts, :posts, :goals
    end
  end
end
# rails g model Contract date:date standup:text sitdown:text