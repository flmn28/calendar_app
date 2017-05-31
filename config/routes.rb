Rails.application.routes.draw do
  resources :events
  get "/common_events/new" => "events#common_new"
  post "/common_events" => "events#common_create"
  get "/common_events/:id/edit" => "events#common_edit"
  patch "/common_events/:id" => "events#common_update"

  devise_for :users, only: [:sessions, :registrations]
  resources :users, only: [:show, :index]
  root 'users#top'
end
