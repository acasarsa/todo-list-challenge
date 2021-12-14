# frozen_string_literal: true

Rails.application.routes.draw do
  resources :todo_items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'todo_items#index'
end
