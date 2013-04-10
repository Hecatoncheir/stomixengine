StomixEngine::Application.routes.draw do
  
  resources :galleries do
    resources :images
  end


  root to: "pages#index"
  
  #Pages
  get 'services', to: 'pages#services'
  
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  
  namespace :admin do
    get '', to: 'dashboard#index', as: '/'
    resources :users
  end
  
  resources :users, only: [:new, :create]
  resources :sessions

end
