Rails.application.routes.draw do

  resources :scores
  resources :manages
  resources :grades
  resources :papers do
    end
  resources :sessions, only: [:new, :create, :destroy]
  resources :users

  # Homepage
  get 'contact', to: 'homepage#contact', as: 'contact'
  get 'about', to: 'homepage#about', as: 'about'

  get 'paperlist', to: 'papers#index', as: 'paperlist'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  # For Admin user
  get 'addpaper', to: 'papers#index', as: 'addpaper'
  get 'removepaper', to: 'papers#index', as: 'removepaper'
  get 'managepapers', to: 'manages#index', as: 'managepapers'
  get 'set', to: 'manages#edit', as: 'set'
  
  # For Elevated user

  # For Normal user
  post 'createscore', to: 'scores#create', as: 'createscore'
  
  root 'homepage#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
