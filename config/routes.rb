Rails.application.routes.draw do
  resources :courses
  resources :subjects
  resources :instructors

  get "articles", to: "articles#index"
  get "courses", to: "courses#index"
  get "subjects", to: "subjects#index"
  get "instructors", to: "instructors#index"
  
  #root
  get "/", to: "main#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
