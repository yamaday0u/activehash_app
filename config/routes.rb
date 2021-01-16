Rails.application.routes.draw do
  root to: "addresses#index"
  resources :address, only: [:index, :new, :create]
end
