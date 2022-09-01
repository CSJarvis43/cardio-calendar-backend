Rails.application.routes.draw do
  resources :swims, only: [:index, :show, :create, :destroy]
  resources :hikes, only: [:index, :show, :create, :destroy]
  resources :skis, only: [:index, :show, :create, :destroy]
  resources :runs, only: [:index, :show, :create, :destroy]
  resources :bikes, only: [:index, :show, :create, :destroy]
  resources :activities, only: [:index, :show, :create, :destroy]
  resources :active_days, only: [:index, :show, :create, :destroy]
  resources :users, only: [:create]

  post '/login', to: 'auth#create'
  post '/auto_login', to: 'auth#auto_login'
  get '/me', to: 'users#show'

end
