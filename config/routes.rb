Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: "teams#index"
  resources :users, only: :show
  resources :teams 
  resources :calendars do
    resources :joins, only: [:new, :create]
  end

end
