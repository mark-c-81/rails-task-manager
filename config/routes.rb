Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # display
  get 'tasks', to: 'tasks#index'
  # create
  get 'tasks/new', to: 'tasks#new',  as: :new_task
  post 'tasks', to: 'tasks#create'
  # display by id
  get 'tasks/:id', to: 'tasks#show', as: :task
  # update
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'
  # delete 
  delete 'tasks/:id', to: 'tasks#destroy'
end
