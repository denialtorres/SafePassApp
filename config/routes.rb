Rails.application.routes.draw do
  devise_for :users, path: "secure"

  get "/home", to: "pages#home"
  get "/about", to: "pages#about"

  resources :entries

  root "entries#index"

  namespace :api do
    namespace :v1 do
      resources :entries
    end
  end
end
