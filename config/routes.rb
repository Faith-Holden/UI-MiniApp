Rails.application.routes.draw do
  root 'user_accounts#index'

  resources :user_accounts, only: [:destroy, :new, :create, :index]
end
