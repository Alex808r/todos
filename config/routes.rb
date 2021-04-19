Rails.application.routes.draw do
  root 'tasks#index', as: 'tasks_index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tasks
  patch '/done/:id', to: 'tasks#done', as: :done_task
end
