Rails.application.routes.draw do
  get 'reviews/new'
  resources :restaurants do
    resources :reviews, only: [:new, :create]
    collection do
      get :top # short sintax for get "top", to: "restaurants#top", as: :top_restaurants
      # /restaurants/top
    end

    member do
      get :chef
    end
  end
  resources :reviews, only: [:destroy]
end
