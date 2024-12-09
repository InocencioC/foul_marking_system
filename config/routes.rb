Rails.application.routes.draw do
  resources :students
  resources :student_booking_in_classes
  resources :bookings
  resources :student_in_classes
  resources :class_colleges
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/articles", to: "articles#index"
  
end
