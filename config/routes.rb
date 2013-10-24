Employeedatabase::Application.routes.draw do
  resources :nonteachings

  resources :teachings

  resources :hods

  resources :employees

  resources :departments

  resources :colleges

  resources :universities

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end