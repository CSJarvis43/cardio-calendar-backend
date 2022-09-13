Rails.application.routes.draw do
  resources :activities, only: [:index, :show, :create, :destroy]
  resources :active_days, only: [:index, :show, :create, :destroy]
  resources :users, only: [:create]

  post '/login', to: 'auth#create'
  post '/auto_login', to: 'auth#auto_login'
  get '/me', to: 'users#show'

  get '/active_days/:id/activities', to: 'active_days#activities_index'

  get '/activities/:exercise_type/top/:column', to: 'activities#top_activities'

end
