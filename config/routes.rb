Rails.application.routes.draw do
  resources :restaurants do
    collection do
      get :top # short sintax for get "top", to: "restaurants#top", as: :top_restaurants
      # /restaurants/top
    end

    member do
      get :chef
    end
  end

  # resources :users do # / REST
    # collection do
      # get :top
      # /users/top
    # end
  # end
end
