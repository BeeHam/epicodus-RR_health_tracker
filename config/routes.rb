Rails.application.routes.draw do
  devise_for :users

  root "static#index"

  resource :users, only: [:show] do
    resource :foods
  end

  resource :users, only: [:show] do
    resource :exercises
  end
end
