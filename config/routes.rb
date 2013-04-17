StomixEngine::Application.routes.draw do
  
  resources :categories


  resources :products
  resources :items


  root to: "pages#index"
  
  #Galleries
  
  resources :galleries do
    resources :images
  end
  
  get 'BigObject', to: 'galleries#BigObject', as: 'bigobject'
  get 'Cottage', to: 'galleries#Cottage', as: 'cottages'
  
  #---------------------------------------------------------
  
  #Pages
  
  get 'services', to: 'pages#services'
  
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  
  #---------------------------------------------------------
  
  #Admin
  
  namespace :admin do
    get '', to: 'dashboard#index', as: '/'
    resources :users
  end
  
  #---------------------------------------------------------
  
  resources :users, only: [:new, :create]
  resources :sessions

end
