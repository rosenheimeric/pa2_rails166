Rails.application.routes.draw do
  resources :enrollment_links
  resources :enrollment_linkscourse_lists
  resources :searches
  resources :courses
  resources :subjects
  resources :instructors

 
  
  #config/routes.rb
Rails.application.routes.draw do
  resources :enrollment_links
  resources :enrollment_linkscourse_lists
  resources :searches
  root 'items#home'
  get '/signup', to: 'users#new'
  resources :users
end


  #config/routes.rb
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get "articles", to: "articles#index"
  get "courses", to: "courses#index"
  get "subjects", to: "subjects#index"
  get "instructors", to: "instructors#index"
  get "searches", to: "searches#querying"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
