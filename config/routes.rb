Rails.application.routes.draw do
  devise_for :users
    root  'list#index'
    resources :bookreview, only: [:index, :show] do
        resources :comments, only: [:create]
            collection do
              get 'search'
            end
    end
    resources :list, only: [:index]
    resources :users, only: [:index, :show]
end