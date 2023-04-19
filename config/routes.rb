# frozen_string_literal: true

Rails.application.routes.draw do
  get 'public_recipes/index'
  devise_for :users
 
  # devise_scope :user do
  #   root to: 'devise/sessions#new'
  # end
  
  root to: 'users#index'
  resources :users, only: [:index, :show] do
    resources :recipes, only: [:index, :show, :new, :create, :destroy]
    resources :foods, only: [:index, :show, :new, :create, :destroy]
  end
  #public recipes route
  resources :public_recipes, only: [:index]
end
