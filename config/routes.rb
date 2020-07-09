Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :students, only: [:new, :create, :show, :edit, :update]
  resources :workout_classes
  resources :instructors
  root 'workout_classes#index'
  get '/login' => 'sessions#new_student'
  post '/login' => 'sessions#create'
  get '/admin/login' => 'sessions#new_instructor'
  post '/admin/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get 'admin/home', to: 'admin#home'
  get 'admin/instructors', to: 'admin#instructors'
  get 'admin/instructors/:id', to: 'admin#show_instructor', as: 'admin_show_instructor'
  get 'admin/workout_classes', to: 'admin#workout_classes'
  get '/workout_classes/:id/signup', to: 'workout_classes#signup', as: 'signup'
  get '/workout_classes/:id/drop', to: 'workout_classes#drop', as: 'drop'
  post '/workout_classes/:id/drop', to: 'workout_classes#drop', as: 'delete_class'

end
