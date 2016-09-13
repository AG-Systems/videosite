Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: { registrations: "registrations" }
  root 'pages#index'
  get 'home'  => 'pages#home'
  get 'support' => 'pages#support'
  get 'subscribers' => 'subscribers#new'
  get 'contents/confidence-intro' => 'contents#confidence-intro'
  get 'contents/accepting' => 'contents#accepting'
  get 'contents/motivation-intro' => 'contents#motivation-intro'  
  get 'subscribers.1' => 'subscribers#create'
  resources :accounts
  resources :subscribers
end
