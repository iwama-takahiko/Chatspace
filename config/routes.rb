Rails.application.routes.draw do

  devise_for :users
  root "messages#index"
  resources :users, only: %i(edit update)
  resources :groups, only: %i(new create edit update) do
    resources :messages, only: %i(index, :create)
  end

end

