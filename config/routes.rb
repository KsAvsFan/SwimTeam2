SwimTeam2::Application.routes.draw do
  devise_for :users

  resources :events

  resources :seasons

  resources :splits

  resources :swimmers

  resources :families

  resources :teams

  resources :home
  
  root :to => 'home#index'
end
