Rails.application.routes.draw do
  resources :estimates
  mount RailsAdmin::Engine => '/', as: 'rails_admin'


  resources :projects
  resources :project_titans
  resources :titan_roles
  resources :roles
  resources :sows
  resources :clients
  resources :titans
  resources :offices
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
