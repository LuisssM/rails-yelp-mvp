Rails.application.routes.draw do
  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:index, :create]
    get 'restaurants/new', to: 'restaurants#new'
    get 'reviews/new', to: 'reviews#new'
  end
end
