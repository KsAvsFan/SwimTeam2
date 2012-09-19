SwimTeam2::Application.routes.draw do
  devise_for :users

  resources :events

  resources :seasons

  resources :splits

  resources :swimmers

  resources :families

  resources :teams
  
  root :to => 'families#index'
end
