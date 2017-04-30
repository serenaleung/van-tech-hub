Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
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
