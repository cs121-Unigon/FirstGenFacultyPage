Rails.application.routes.draw do
  get 'faqs/new'

  get 'faqs/create'

  get 'faqs/update'

  get 'faqs/edit'

  get 'faqs/destroy'

  get 'faqs/index'

  get 'faqs/show'

  resources :feedbacks
  resources :profs
  resources :departments
  resources :testimonials
  resources :faqs

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
  get '/testimonials', to: 'testimonials#index'
  get '/faqs', to: 'faqs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "profs#index"
end
