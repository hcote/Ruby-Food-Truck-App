Rails.application.routes.draw do

  resources :foodtrucks  do
    collection do
      get :map
  end
  end
  root "users#index"
  resources :users, except: [:new]

  get "/signup", to: "users#new"
  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
  resources :sessions, only: [:create]

  get '/pizza', to: 'foodtrucks#map'
  get '/asian', to: 'foodtrucks#map'
  get '/veggie', to: 'foodtrucks#map'
  get '/mexican', to: 'foodtrucks#map'

  get '/newtruck', to: 'foodtrucks#new'

end
