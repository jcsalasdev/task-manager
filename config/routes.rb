Rails.application.routes.draw do
  resources :tasks
  root 'pages#home'
  get 'signup', to: 'users#new', as: 'sign-up'
  resources :users, except: [:new]
  get 'signin', to: 'sessions#new', as: 'sign-in'
  post 'signin', to: 'sessions#create'
  delete 'signout', to: 'sessions#destroy', as: 'sign-out'
end 
