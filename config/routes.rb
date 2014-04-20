Rails.application.routes.draw do
  devise_for :users
  resource :posts
  root to: "posts#index"
end
