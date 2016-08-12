Rails.application.routes.draw do
  root 'cocktails#index'
  resources :cocktails do
    resources :doses
  end
  resources :doses, only: :create
  get '/login' => 'sessions#new'
   post '/login' => 'sessions#create'
   get '/logout' => 'sessions#destroy'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
