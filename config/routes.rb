Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'nutritions#index'
  resources :nutritions do
    collection do
      get 'search'
    end
    member do
      post "add", to: "favorites#create"
    end

    resource :favorites, only: [:destroy]
  end

  resources :users do
    resources :favorites, only: [:show, :create]
    collection do
      get :favorites
    end
  end

end
