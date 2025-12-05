Rails.application.routes.draw do
  devise_for :users, path: "secure"

  get "/home", to: "pages#home"
  get "/about", to: "pages#about"

  resources :entries

  root "entries#index"

  # Api definition
  namespace :api do
    namespace :v1 do
      post :auth, to: "auth#create"
      resources :entries
    end

    namespace :v2, defaults: { format: :json } do
      resources :users
    end
  end
end
