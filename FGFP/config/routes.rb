Rails.application.routes.draw do
  resources :feedbacks
  resources :profs
  resources :departments
  
  # added from a tutorial--may require more lines
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'home/show'

 

  root 'profs#index'
  get '/index', to: 'profs#index'
  get '/new', to: 'profs#new'
  get '/show', to: 'profs#show'
  get '/about', to: 'profs#about'
  get '/contact_us', to: 'feedbacks#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "profs#index"
end
