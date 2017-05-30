Rails.application.routes.draw do
  devise_for :users, only: [:sessions, :registrations]
  resources :users, only: [:show, :index]
  root 'users#top'
end
