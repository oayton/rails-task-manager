Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'tasks#index'

  get 'tasks', to: 'tasks#index', as: :tasks

  get 'tasks/new', to: 'tasks#new', as: :new
  post 'tasks', to: 'tasks#create'

  get 'tasks/:id', to: 'tasks#show', as: :task

  delete "tasks/:id", to: "tasks#destroy"

  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id', to: 'tasks#update'

  # resources :tasks

  # get 'about', to: 'pages#about', as: :about
  # get 'contact', to: 'pages#contact', as: :contact

  # resources :restaurants
end
