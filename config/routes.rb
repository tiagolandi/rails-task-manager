Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'tasks#index'

  resources :tasks
  # Generic syntax:
  # verb 'path', to: 'controller#action'

  # # Read all:
  # get 'tasks', to: 'tasks#index'

  # # Create - 2 steps:
  # get  'tasks/new', to: 'tasks#new', as: :new_task
  # post 'tasks', to: 'tasks#create'

  # # Read one only:
  # get 'tasks/:id', to: 'tasks#show', as: :task

  # # Edit:
  # get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task

  # # Update:
  # patch 'tasks/:id', to: 'tasks#update'

  # # Delete:
  # delete 'tasks/:id', to: 'tasks#destroy'
end
