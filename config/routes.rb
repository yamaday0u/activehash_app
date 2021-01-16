Rails.application.routes.draw do
  root to: "addresses#index"
  resources :addresses, only: [:index, :new, :create]
end
