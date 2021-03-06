Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :products, only: [:index, :create, :show]
      resources :ingredients, only: [:index, :create, :show]
      resources :users, only: [:create]
      post '/auth', to: "auth#login"
      post '/auth/refresh', to: "auth#refresh"
    end
  end
end
