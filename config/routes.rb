Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: "teams#index"
  resources :teams
  resources :users, only: :show
  resources :calendars
end
