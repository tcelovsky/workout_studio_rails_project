Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :students
  resources :workout_classes
  resources :instructors
  root 'workout_classes#index'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  # get '/welcome' => 'sessions#welcome'
  # get '/show' => 'secrets#show'
end
