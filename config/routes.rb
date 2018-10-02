Rails.application.routes.draw do
  resources :cohorts
  resources :courses
  devise_for :users, controller: { registrations: 'registrations' }
  root to: 'static#homepage'
end
