Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :movies
      resources :directors
    end
  end

  root to: "home#index"

  post "refresh", controller: :refresh, action: :create
  post "signin", controller: :signin, action: :create
  post "signup", controller: :signup, action: :create
  delete "signup", controller: :signin, action: :destroy

end
