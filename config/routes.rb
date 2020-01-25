Rails.application.routes.draw do
  devise_for :users
    root  'list#index'
    resources :bookreview, only: [:index, :show] do
        resources :comments, only: [:create]
    end
    resources :list, only: [:index]
    resources :user, only: [:index, :show]
end
