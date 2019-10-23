Rails.application.routes.draw do
  root "pages#home"

  get "/signin", to: "sessions#new"
  post "/signin", to: "sessions#create"
  post "/signup", to: "users#create"
  get "/signup", to: "users#new"
  delete "/logout", to: "sessions#delete"
end
