Rails.application.routes.draw do
  resources :users, only: [:show, :new, :create, :edit, :update]
  resources :rooms, except: [:index, :edit, :update]  
  resources :windows, except: [:index, :edit, :update]
  resources :plants_windows, except: [:index, :edit, :update]
  resources :plants, only: [:show, :index]
  get '/login', to: "auth#login", as: "login"
  post '/login', to: "auth#verify"
  root 'auth#login'



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
