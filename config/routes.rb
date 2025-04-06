Rails.application.routes.draw do
  root "posts#index"

  resources :posts, except: %w[new]

  get "auth/:provider/callback", to: "sessions#create"
  get "auth/failure", to: redirect("/")
  post "logout", to: "sessions#destroy", as: "logout"
end
