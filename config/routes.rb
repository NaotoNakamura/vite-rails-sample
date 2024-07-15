Rails.application.routes.draw do
  devise_for :users
  root "posts#index"

  resources :posts, except: %w[new]
end
