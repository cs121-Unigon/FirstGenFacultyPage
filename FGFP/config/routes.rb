Rails.application.routes.draw do
  resources :profs
  resources :departments

  root 'profs#index'
  get '/index', to: 'profs#index'
  get '/new', to: 'profs#new'
  get '/show', to: 'profs#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
