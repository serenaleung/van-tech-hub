Rails.application.routes.draw do
  resources :directory, only: [:index]
  resources :events, only: [:index]
  resources :news, only: [:index]
  resources :organizations, only: [:new]
  resources :users, only: [:new]
  resources :sessions, only: [:new]

  namespace :admin do
    resources :events, only: [:index, :create, :destroy]
    resources :news, only: [:index, :create, :destroy]
  end

  root 'welcome#index'
end
