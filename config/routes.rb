MikeOdmark::Application.routes.draw do
  devise_for :admins

  root to: "home#index"

  resources :posts, only: [:index, :show], path: "blog"
  namespace :admin do
    resources :posts, only: [:index, :new, :create, :edit, :update, :destroy]
  end

  resources :messages, only: [:new, :create], path: "contact"
end
