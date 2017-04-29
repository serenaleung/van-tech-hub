Rails.application.routes.draw do

  resources :directory, only: [:index]
  resources :events, only: [:index]
  resources :news, only: [:index]
  resources :organizations, only: [:new]
  resources :users, only: [:new]
  resources :sessions, only: [:new]
  resources :admin

  root 'welcome#index'
end
