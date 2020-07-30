Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  resources :menus do
    resources :meals do
      resources :allergens, only: [:create, :index, :show, :new]
      resources :meals_ingredients, only: [:create, :index, :show]
    end
    resources :drinks do
      resources :drinks_ingredients, only: [:create, :index, :show]
    end
  end
  
end
