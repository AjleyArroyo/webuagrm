Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  devise_for :users, controllers: {sessions: 'users/sessions', registrations: 'users/registrations', confirmations: 'users/confirmations', passwords: 'users/passwords'}, :path => "", :path_names => {:sign_out => "sign_out", :sign_up => "sign_up"}
end
