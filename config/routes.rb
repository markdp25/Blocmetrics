Rails.application.routes.draw do
  resources :registered_applications, only: [:index, :new, :create, :show, :destroy]

  devise_for :users
  resources :users

  get "welcome/index"
  get 'welcome/about'

  root to: 'welcome#index'

  get 'signup' => 'users#new'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

end
