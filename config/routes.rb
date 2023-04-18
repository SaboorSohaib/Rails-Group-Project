# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
 
  # devise_scope :user do
  #   root to: 'devise/sessions#new'
  # end
 
  resources :users
end
