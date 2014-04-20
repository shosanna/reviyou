Rails.application.routes.draw do
  devise_for :users

  resources :posts do
    resources :comments

    member do
      get :export
    end
  end

  root to: "posts#index"
end
