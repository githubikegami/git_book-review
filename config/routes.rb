Rails.application.routes.draw do
    resources :bookreview do
        resources :comments, only: [:create]
    end
    resources :list, only: [:index]
    resources :user, only: [:index, :show]
end
