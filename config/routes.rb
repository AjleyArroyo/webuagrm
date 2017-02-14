Rails.application.routes.draw do

  resources :eventos
  resources :establecimientos
  resources :estblecimientos
  resources :categoria
  devise_for :users, controllers: {sessions: 'users/sessions', registrations: 'users/registrations', confirmations: 'users/confirmations', passwords: 'users/passwords'}, :path => "", :path_names => {:sign_out => "sign_out", :sign_up => "sign_up"}
  get 'home/index'
  root 'home#index'
end
