StomixEngine::Application.routes.draw do
  
  resources :galleries do
    resources :images
  end


  root to: "pages#index"
  
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  
  namespace :admin do
    get '', to: 'dashboard#index', as: '/'
    get 'users', to: 'users#index'
  end
  
  resources :users, only: [:new, :create]
  resources :sessions

end
