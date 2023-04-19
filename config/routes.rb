# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
 
  devise_scope :user do
    root to: 'devise/sessions#new'
  end

  resources :users, only: [:index, :show] do
    resources :foods, only: [:index, :show, :new, :create, :destroy]
  end
end
