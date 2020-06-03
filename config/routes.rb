Rails.application.routes.draw do
  root 'home#index'

  get    '/new_article',   to: 'articles#new'
  get    '/new_category',  to: 'categories#new'
  get    '/signup',        to: 'users#new'
  get    '/signup',        to: 'users#create'
  get    '/login',         to: 'sessions#new'
  post   '/login',         to: 'sessions#create'
  delete '/logout',        to: 'sessions#destroy'

  resources :users, only: [:new, :create]
  resources :categories, only: [:new, :show, :create, :destroy]
  resources :articles, only: [:new, :create] do
    resources :votes, only: [:create, :destroy]

  end

end
