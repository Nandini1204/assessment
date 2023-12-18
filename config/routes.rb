Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  root 'sessions#new'

  resources :receptionists, only: [:new, :create]
  resources :doctors, only: [:new, :create]

  resource :session, only: [:new, :create, :destroy]
  resources :patients

  resources :doctors, only: [] do
  get 'dashboard', on: :collection
end


