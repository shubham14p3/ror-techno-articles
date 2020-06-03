Rails.application.routes.draw do
  root 'home#index'
  resources :users, only: [:new, :create]
  resources :articles, only: [:new, :create] do
    resources :votes, only: [:create, :destroy]
  end


  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
