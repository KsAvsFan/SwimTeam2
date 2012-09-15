SwimTeam2::Application.routes.draw do
  resources :events

  resources :seasons

  resources :splits

  resources :swimmers

  resources :families

  root :to => 'seasons#index'
end
