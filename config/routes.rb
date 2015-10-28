Rails.application.routes.draw do
  devise_for :users
  root "static#index"

  resource :users do
    resource :foods
  end

  resource :users do
    resource :exercises
  end
end
