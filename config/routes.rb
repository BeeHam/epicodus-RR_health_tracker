Rails.application.routes.draw do
  devise_for :users

  root "static#index"

  resources :users, only: [:show] do
    resources :foods
  end

  resources :users, only: [:show] do
    resources :exercises
  end
end
