Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'lists#index'
  resources :lists, only: %w[index new show create] do
    resources :bookmarks, only: %w[new create]
    resources :reviews, only: %w[create]
  end
  resources :bookmarks, only: %w[destroy]
end
