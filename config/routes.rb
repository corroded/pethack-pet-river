Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :pets, only: %i[show edit update]
  resource :notify, only: %i[create], controller: :notifications
end
