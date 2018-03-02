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

  get '/pizza', to: 'maps#pizza'
  get '/asian', to: 'maps#asian'
  get '/veggie', to: 'maps#veggie'
  get '/mexican', to: 'maps#mexican'

  get '/newtruck', to: 'foodtrucks#new'

end
