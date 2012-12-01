MikeOdmark::Application.routes.draw do
  devise_for :admins

  root to: "home#index"

  resources :posts, only: [:index, :show, :new, :create, :edit, :update, :destroy], path: "blog"
  # namespace :admin do
    # resources :posts, only: [:index, :new, :create, :edit, :update, :destroy]
  # end

  resources :messages, only: [:new, :create], path: "contact"

  resource :work, only: [:show, :edit, :update], controller: "work"
  resource :info, only: [:show, :edit, :update], controller: "info"
end
