Rails.application.routes.draw do
  resources :students
  resources :workout_classes
  resources :instructors
  # resources :workout_studios
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
