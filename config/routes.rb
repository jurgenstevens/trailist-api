Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :trails
  resources :trails, only: [:index, :show, :create] do
    resources :trail_reviews, only: [:index, :show]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
