Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :movies
  # line below allow bookmark routes to have a list id attached
  resources :lists do
    resources :bookmarks, only: [:new, :create, :destroy]
  end
end
