MikeOdmark::Application.routes.draw do
  root to: "home#index"
  resources :posts, only: [:index, :show], path: "blog"
end
