MikeOdmark::Application.routes.draw do
  root to: "home#index"

  resources :posts, only: [:index, :show], path: "blog"
  namespace :admin do
    resources :posts, only: [:index, :new, :create, :edit, :update, :destroy]
  end
end
