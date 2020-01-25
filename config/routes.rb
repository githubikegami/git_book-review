Rails.application.routes.draw do
    root  'list#index'
    resources :bookreview do
        resources :comments, only: [:create]
    end
    resources :list, only: [:index]
    resources :user, only: [:index, :show]
end
