SwimTeam2::Application.routes.draw do
  resources :seasons

  resources :splits

  resources :swimmers

  resources :families

  root :to => 'seasons#index'
end
