Rails.application.routes.draw do
  resources :users, only: [:show, :new, :create]
  resources :rooms, except: :index  
  resources :windows, except: :index
  resources :plants, only: [:show, :index]



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
