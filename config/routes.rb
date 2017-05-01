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

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get('/organizations/:id/confirm', { to: 'organizations#confirm', as: 'organizations_confirm' })
  post('/organizations/:id/confirm', { to: 'organizations#update_confirm' })

  resources :organizations

  resources :technologies

  resources :sessions, only: [:new, :create] do
     delete :destroy, on: :collection
   end
  resources :users
  resources :admin, only: [:index]

  namespace :admin do
  resources :claims
end

  root 'welcome#index'
end
