Rails.application.routes.draw do
  root "posts#index"

  resources :posts, except: %w[new]
end
