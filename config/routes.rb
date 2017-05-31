Rails.application.routes.draw do
  resources :events
  devise_for :users, only: [:sessions, :registrations]
  resources :users, only: [:show, :index]
  root 'users#top'
end
