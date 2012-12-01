MikeOdmark::Application.routes.draw do
  devise_for :admins

  root to: "home#index"

  resources :posts, only: [:index, :show, :new, :create, :edit, :update, :destroy], path: "blog"
  resources :messages, only: [:new, :create], path: "contact"

  resource :work, only: [:show, :edit, :update], controller: "work"
  resource :info, only: [:show, :edit, :update], controller: "info"
end
