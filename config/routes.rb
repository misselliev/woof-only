# frozen_string_literal: true

Rails.application.routes.draw do
  root 'sessions#new'
  resources :users
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'
  get 'signup' => 'users#new'
end
