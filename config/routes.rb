Rails.application.routes.draw do

  devise_for :users

  get "welcome/index"
  get 'welcome/about'
  root 'welcome#index'

  resources :users
  resources :registered_applications, only: [:index, :new, :create, :show, :destroy]


  namespace :api, defaults: { format: :json } do
    match '/events', to: 'events#preflight', via: [:options]
     resources :events, only: [:create]
   end

end
