Rails.application.routes.draw do
  

  resources :users
  resources :events

  root 'users#index'

  get 'event/suscribe/:event/:user', to: 'events#suscribe/'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
