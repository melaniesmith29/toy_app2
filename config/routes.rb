Rails.application.routes.draw do
  resources :microposts
  resources :microposrts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'
end
