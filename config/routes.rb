Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    member do
      get :export
    end
  end
  root to: "posts#index"
end
